output "udactiy_t2_instance_ips" {
  value = ["${aws_instance.UdacityT2.*.public_ip}"]
}

output "udacity_t4_instance_ips" {
  value = ["${aws_instance.UdacityM4.*.public_ip}"]
}
