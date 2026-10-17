resource "aws_instance" "my_instance" {
    ami           = data.aws_ami.ubuntu.id
    instance_type = var.instance_type
}