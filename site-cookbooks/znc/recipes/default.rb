#
# Cookbook Name:: znc
# Recipe:: default
#
# Copyright 2013, Lincoln Lee
#
# All rights reserved - Do Not Redistribute
#

package 'znc'
package "git-core"
package "zsh"
package "emacs23-nox"
package "htop"



user node["user"]["name"] do
  password node["user"]["password"]
  gid "adm"
  home "/home/#{node["user"]["name"]}"
  supports manage_home: true
  shell "/bin/zsh"
end

directory "/home/#{node["user"]["name"]}/.znc/configs" do
  owner "znc"
  group "znc"
  mode "0755"
  recursive true
  action :create
end


template "/home/#{node["user"]["name"]}/.znc/configs/znc.conf" do
  source "znc.conf.erb"
  owner node["user"]["name"]
  group "adm"
end
