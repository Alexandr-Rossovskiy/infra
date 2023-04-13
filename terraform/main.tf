provider "google" {
	project = "${var.project}"
	region = "${var.region}"
}

resource "google_compute_instance" "app" {
	name = "example-instance-${count.index+1}"
	machine_type = "e2-small"
	zone = "europe-north1-a"
	count = 1
	
	#загрузочный диск
	boot_disk {
		initialize_params {
		image = "${var.disk_image}"
		}
	}
	#сетевой интерфейс
	network_interface {
		network = "default"

		access_config {}
	}
	
	#определим SSH ключ	
	metadata = {
		ssh-keys = "appuser:${file("~/.ssh/appuser.pub")}"
	}

	tags = ["reddit-app"]

}
