output "day2_mayur_webserver_public_ip" {
  description = "Public IP of day2-mayur web server"
  value       = module.day2_mayur_ec2.public_ip
}
