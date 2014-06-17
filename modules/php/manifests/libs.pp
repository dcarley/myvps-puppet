class php::libs {
  package { ['php5-gd', 'php5-mysql']:
    ensure => present,
  }
}
