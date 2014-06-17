class private_hosting(
  $vhosts = {},
) {
  validate_hash($vhosts)
  create_resources('nginx::resource::vhost', $vhosts)
}
