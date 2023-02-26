# Projectname
projectname = "pnjk8s"

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
}

distros        = "ubuntu"

diskpool       = "default"

ctlplanedisk   = 32000000000

interface      = "ens01"

ctlplanehosts  = 3

ctlplanememory = "8192"

ctlplanevcpu   = 2

ctlplaneips    = ["192.168.122.21", "192.168.122.22", "192.168.122.23"]

ctlplanemacs   = ["52:54:00:50:99:c5", "52:54:00:0e:87:be", "52:54:00:9d:90:38"]

ctlplanenames  = ["ctlplane1", "ctlplane2", "ctlplane3"]

# workerhosts    = 3

# workerdisk     = 500000000000

# workermemory   = "32768"

# workervcpu     = 8

# workerips      = ["192.168.122.31", "192.168.122.32", "192.168.122.33"]

# workermacs     = ["52:54:00:50:98:c4", "52:54:00:0d:86:bd", "52:54:00:9c:91:39"]

# workernames    = ["worker1", "worker2", "worker3"]
