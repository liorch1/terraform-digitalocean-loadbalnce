resource "digitalocean_droplet" "www-1" {
  image = "ubuntu-16-04-x64"
    name = "www-1"
    region = "ams3"
    size = "s-1vcpu-1gb"
    private_networking = true
    user_data = "${file("config/ngnix.sh")}"
    ssh_keys = [
      "${var.ssh_fingerprint}"
    ]
  connection {
      user = "root"
      type = "ssh"
      private_key = "${file(var.pvt_key)}"
      timeout = "2m"
  }

}
