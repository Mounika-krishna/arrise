resource "aws_instance" "ec2" {
  for_each = { for i, instance in var.instances : i => instance }

  ami                    = var.ami_id
  instance_type          = each.value.instance_type
  key_name               = each.value.key_name

  root_block_device {
    volume_type           = each.value.volume_type
    volume_size           = each.value.volume_size
    delete_on_termination = true
  }

  tags = {
    Name = "ec2-${each.key}"
  }
}

