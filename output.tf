output "public_ip" {
    value = aws_instance.cloud_team.public_ip

}
output "az" {
    value = aws_instance.cloud_team.availability_zone
}
output "ssh-command" {
    value = "ssh -i ~/Downloads/week7d2.pem ec2-user$@{aws_instance.cloud_team.public_ip}"
}