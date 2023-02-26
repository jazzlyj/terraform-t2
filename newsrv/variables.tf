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
variable "ctlplanehosts" {
  type        = number
  description = "Control Plane node hosts quantity"
}
variable "ctlplanememory" {
  type        = string
  description = "Control Plane node memory"
}
variable "ctlplanevcpu" {
  type        = number
  description = "Control Plane node virtual cpus" 
}
variable "ctlplaneips" {
  type        = list(string)
  description = "Control Plane node IP addresses"
}
variable "ctlplanemacs" {
  type        = list(string)
  description = "Control Plane node MAC addresses"
}
variable "ctlplanenames" {
  type        = list(string)
  description = "Control Plane node names"
}
variable "ctlplanedisk" {
  type        = number
  description = "Control Plane node disk size" 
}
# variable "workerdisk" {
#   type        = number
#   description = "Worker node disk size" 
# }