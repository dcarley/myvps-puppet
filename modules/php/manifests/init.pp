class php {
  package { ['php5-common', 'php5-cli', 'php5-fpm']:
    ensure => present,
  } ->
  service { 'php5-fpm':
    ensure => running,
  }
}
