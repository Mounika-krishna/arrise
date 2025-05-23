ami_id = "ami-0abcd1234efgh5678"

instances = [
  {
    instance_type = "t2.micro"
    volume_type   = "gp2"
    volume_size   = 8
    key_name      = "key1"
  },
  {
    instance_type = "t3.small"
    volume_type   = "gp3"
    volume_size   = 10
    key_name      = "key2"
  },
  {
    instance_type = "m5.large"
    volume_type   = "io1"
    volume_size   = 20
    key_name      = "key3"
  },
  {
    instance_type = "c5.xlarge"
    volume_type   = "gp2"
    volume_size   = 15
    key_name      = "key4"
  },
  {
    instance_type = "t2.medium"
    volume_type   = "gp2"
    volume_size   = 12
    key_name      = "key5"
  }
]

cli_users = ["engine", "ci"]
full_users = ["John Doe", "Aboubacar Maina"]




