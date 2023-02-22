# Projectname
projectname = "newsrv"

# OS Image
sourceimage = "/usr2/home/jay/src/terraform-t2/sources/ubuntu.qcow2"

# The baseimage is the source diskimage for all VMs created from the sourceimage
baseimagediskpool = "default"

# Domain and network settings
domainname = "mydomain.vm"  
networkname = "default"    # Virtual Networks: default (=NAT)

# Host specific settings
# RAM size in bytes
# Disksize in bytes (disksize must be bigger than sourceimage virtual size)
# Example:
#    qemu-img info debian-10.3.4-20200429-openstack-amd64.qcow2
#         virtual size: 2 GiB (2147483648 bytes)
hosts = {
   "newsrv" = {
      name     = "newsrv",
      vcpu     = 1,
      memory   = "1024",
      diskpool = "default",
      disksize = 12000000000,
      mac      = "52:54:00:11:11:33",
   },
}