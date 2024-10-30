variable "do_token" {
    description = "this is digital ocean api token to authenticate"
    type = string
    sensitive = true
  
}

variable "image" {
    description = "this is digital ocean os image"
    type = string
}

variable "name" {
    description = "this is digital ocean vm name"
    type = string
}

variable "region" {
    description = "this is digital ocean vm location or region"
    type = string
}

variable "size" {
    description = "this is digital ocean vm size or total space"
    type = string
}

variable "tags" {
    description = "this is digital ocean vm tag to identify"
    type = list(string)
}

variable "public_key" {
    description = "this is digital ocean ssh public key"
    type = string

}