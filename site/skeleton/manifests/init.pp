class skeleton {
  file { '/etc/skel':
    ensure => directory,
    owner  => 'root',
    group  => 'root',
#    source => 'puppet:///modules/ssh/sshd_config',
  }
  
  file { '/etc/skel/.bashrc':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    require => File['/etc/skel'],
    source  => 'puppet:///site/skeleton/files/bashrc,
  }
}
