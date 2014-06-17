class private_hosting(
  $vhosts = {},
  $databases = {},
) {
  validate_hash($vhosts)
  create_resources('nginx::resource::vhost', $vhosts)

  validate_hash($databases)
  create_resources('mysql::db', $databases)
}
