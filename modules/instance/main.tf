resource "aws_instance" "aws_instance" {
  ami           = "${var.aws_instance_ami}"
  instance_type = "${var.aws_instance_type}"
  subnet_id     = "${var.aws_instance_subnet_id}"
  key_name      = "${resource.aws_key_pair.aws_key_pair.name}"

  tags = {
    Name = "${var.aws_instance_name}"
  }
}

resource "aws_key_pair" "aws_key_pair" {
  key_name   = "${var.aws_key_pair_name}"
  public_key = "${var.aws_key_pair_public_key}"
}


