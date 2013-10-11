name             'znc'
maintainer       'Lincoln Lee'
maintainer_email 'git@lincoln.hk'
license          'All rights reserved'
description      'Installs/Configures znc'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'apt'

%w{ ubuntu }.each do |os|
  supports os
end
