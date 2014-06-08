node default {
  hiera_include('classes')

  $packages = hiera('packages')
  package { $packages:
    ensure => present,
  }
}
