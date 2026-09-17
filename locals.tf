locals {
  serial_port_enable = 1
  ssh_key            = file("${pathexpand("~/.ssh/mysshkey.pub")}")
}