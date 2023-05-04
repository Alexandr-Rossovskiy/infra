provider "google" {
	project = "${var.project}"
	region = "${var.region}"
}

resource "google_compute_instance" "app" {
	name = "example-instance-${count.index+1}"
	machine_type = "e2-small"
	zone = "europe-north1-a"
	count = 3
	
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

#настройки firewall
resource "google_compute_firewall" "firewall_app" {
	name = "firewall-1"
	network = "default"
    
    #что разрешаем
	allow {
	protocol = "tcp"
	ports = ["80", "443", "53", ]
	}
    
    #каким адресам разрешаем доступ
	source_ranges = ["0.0.0.0/0"]

    #правило пременимо для инстансов с тегом:
	target_tags = ["reddit-app"]
}
