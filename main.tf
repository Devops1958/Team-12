resource "aws_instance" "cloud_team" {
  ami           = "ami-0440d3b780d96b29d"
  instance_type = "t2.micro"
  key_name = "week7d2"
  

  tags = {
    Name = "cloud-server"
  }
  user_data = file ("install.sh")
}
resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.cloud_team.id
  instance_id = aws_instance.cloud_team.id
}
resource "aws_ebs_volume" "cloud_team" {
  availability_zone = aws_instance.cloud_team.availability_zone
  size              = 10

  tags = {
    Name = "cloud-server"
  }
}