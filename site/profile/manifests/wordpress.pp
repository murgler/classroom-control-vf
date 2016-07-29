class profile::wordpress {
  include apache
  include wordpress
  class {'mysql::server':
    root_password  => 'puppet',
  }
}
