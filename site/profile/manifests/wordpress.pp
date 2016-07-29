class profile::wordpress {
  include apache
  include apache::mod::php
  class { wordpress:
    install_dir => '/var/www/html',
  }
  class {'mysql::server':
    root_password  => 'puppet',
  }
}
