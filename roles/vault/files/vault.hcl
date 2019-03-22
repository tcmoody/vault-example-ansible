storage "consul" {
  address = "127.0.0.1:8500"
  path    = "vault"
}
listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = 1
}
seal "awskms" {
  region     = "us-east-1"
  kms_key_id = "arn:aws:kms:us-east-1:117859406744:key/9d9e44a7-903f-45dc-95bd-2345ec5b3c4e"
}
default_lease_ttl = "15m"
ui = true