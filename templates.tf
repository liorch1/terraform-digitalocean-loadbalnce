data "template_file" "haproxyconf" {
	template = "${file("config/haproxy.cfg.tpl")}"
	
	vars {
	www-1_ip = "${digitalocean_droplet.www-1.ipv4_address_private}"
    www-2_ip = "${digitalocean_droplet.www-2.ipv4_address_private}"
	}
}
