class apache::install inherits apache {

  package { $::apache::package_name:
    ensure => present,
  }
  
}
