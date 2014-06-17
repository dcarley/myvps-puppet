class accounts(
  $managed = {},
  $unmanaged = ['vagrant'],
) {
  validate_hash($managed)
  validate_array($unmanaged)

  create_resources('account', $managed)

  user { $unmanaged:
    ensure => undef,
  }

  resources { 'user':
    purge => true,
  }
}
