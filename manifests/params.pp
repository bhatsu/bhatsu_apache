# == Class: apache::params
#
class apache::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'httpd'
      $service_name = 'httpd'
    }
    'Redhat', 'Amazon': {
      $service_name = 'httpd'
      $package_name = 'httpd'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
  $webpage_text = 'Puppet was here 2016 - Sunny BHAT'
}
