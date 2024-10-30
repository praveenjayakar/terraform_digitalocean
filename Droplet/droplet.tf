# Create a new Web Droplet in the blr1 region

data "digitalocean_ssh_key" "do1" {
  name = "DO1"
}

data "digitalocean_ssh_key" "do" {
  name = "DO"
}


resource "digitalocean_ssh_key" "default" {
  name       = "my_ssh_keys"
  public_key = var.public_key
}

resource "digitalocean_droplet" "web" {
  image  = var.image
  name   = var.name
  region = var.region
  size   = var.size
  tags = var.tags
  ssh_keys = [data.digitalocean_ssh_key.do.id,
              data.digitalocean_ssh_key.do1.id,
              digitalocean_ssh_key.default.id]
}