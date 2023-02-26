# Projectname
projectname = "pnjk8s"

# OS Image
sourceimage = "/usr2/home/jay/src/terraform-t2/sources/ubuntu.qcow2"

# The baseimage is the source diskimage for all VMs created from the sourceimage
baseimagediskpool = "default"

# Domain and network settings
domainname = "mydomain.vm"  
networkname = "default"    # Virtual Networks: default (=NAT)


distros        = "ubuntu"

diskpool       = "default"

interface      = "ens01"

# Host specific settings
# RAM size in bytes
# Disksize in bytes (disksize must be bigger than sourceimage virtual size)
# Example:
#    qemu-img info debian-10.3.4-20200429-openstack-amd64.qcow2
#         virtual size: 2 GiB (2147483648 bytes)
hosts = {
   "ctlplane1" = {
      name     = "ctlplane1",
      vcpu     = 2,
      memory   = "8192",
      diskpool = "default",
      disksize = 32000000000,
      mac      = "52:54:00:50:99:c5",
   },
   "ctlplane2" = {
      name     = "ctlplane2",
      vcpu     = 2,
      memory   = "8192",
      diskpool = "default",
      disksize = 32000000000,
      mac      = "52:54:00:0e:87:be",
   },
   "ctlplane3" = {
      name     = "ctlplane3",
      vcpu     = 2,
      memory   = "8192",
      diskpool = "default",
      disksize = 32000000000,
      mac      = "52:54:00:9d:90:38",
   },
   "worker1" = {
      name     = "worker1",
      vcpu     = 8,
      memory   = "32768",
      diskpool = "default",
      disksize = 500000000000,
      mac      = "52:54:00:20:77:b4",
   },
   "worker2" = {
      name     = "worker2",
      vcpu     = 8,
      memory   = "32768",
      diskpool = "default",
      disksize = 500000000000,
      mac      = "52:54:00:0a:67:ab",
   },
   "worker3" = {
      name     = "worker3",
      vcpu     = 8,
      memory   = "32768",
      diskpool = "default",
      disksize = 500000000000,
      mac      = "52:54:00:9a:40:22",
   },

}