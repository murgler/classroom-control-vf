class profile::wordpress {
  include apache
  class { wordpress:
    install_dir => /var/www/html,
  }
  class {'mysql::server':
    root_password  => 'puppet',
  }
}
