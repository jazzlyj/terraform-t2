variable "distros" {
  type        = string
  description = "OS distro used for vm creation"
}
variable "diskpool" {
  type        = string
  description = "Name of the disk pool used for vm creation"
}
variable "interface" {
  type        = string
  description = "Name of the network interface"
}
