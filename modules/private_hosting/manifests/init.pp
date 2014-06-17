class private_hosting(
  $vhosts = {},
  $locations = {},
  $databases = {},
) {
  validate_hash($vhosts)
  create_resources('nginx::resource::vhost', $vhosts)

  validate_hash($locations)
  create_resources('nginx::resource::location', $locations)

  validate_hash($databases)
  create_resources('mysql::db', $databases)
}
