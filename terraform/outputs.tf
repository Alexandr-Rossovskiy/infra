output "app_external_ip-1" {
	value = "${google_compute_instance.app[0].network_interface.0.access_config.0.nat_ip}"
}
output "app_external_ip-2" {
	value = "${google_compute_instance.app[1].network_interface.0.access_config.0.nat_ip}"
}
output "app_external_ip-3" {
	value = "${google_compute_instance.app[2].network_interface.0.access_config.0.nat_ip}"
}