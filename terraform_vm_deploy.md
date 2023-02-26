
# install terraform
```bash
sudo apt update
sudo apt install wget curl unzip
TER_VER=`curl -s https://api.github.com/repos/hashicorp/terraform/releases/latest | grep tag_name | cut -d: -f2 | tr -d \"\,\v | awk '{$1=$1};1'`
wget https://releases.hashicorp.com/terraform/${TER_VER}/terraform_${TER_VER}_linux_amd64.zip
unzip terraform_${TER_VER}_linux_amd64.zip
sudo mv terraform /usr/local/bin/
which terraform
terraform --version
```

# start libvirt (kvm)
```bash
sudo systemctl start libvirtd
sudo systemctl enable libvirtd
sudo modprobe vhost_net
echo vhost_net | sudo tee -a /etc/modules
```

# install terraform-provider-libvirt
```bash
curl -s https://api.github.com/repos/dmacvicar/terraform-provider-libvirt/releases/latest   | grep browser_download_url   | grep linux_amd64.zip   | cut -d '"' -f 4   | wget -i -
unzip terraform-provider-libvirt_*_linux_amd64.zip
rm -f terraform-provider-libvirt_*_linux_amd64.zip
mv terraform-provider-libvirt_* ~/.terraform.d/plugins/terraform-provider-libvirt
```




# Prep terraform files for Ubuntu
## [main.tf](./newsrv/main.tf)
## [terraform.tfvars](./newsrv/terraform.tfvars)
## [cloud_init.cfg](./newsrv/cloud_init.cfg)


# Ubuntu prep
## Disable [apparmor](https://manpages.ubuntu.com/manpages/focal/en/man7/apparmor.7.html)
 * Check the current status of AppArmor:
```bash
sudo apparmor_status
```

*  List all AppArmor available profiles:
``` bash
ls /etc/apparmor.d/
``` 

  abstractions    lsb_release      usr.bin.evince                        usr.lib.libreoffice.program.senddoc      usr.sbin.cups-browsed  usr.sbin.rsyslogd
  disable         nvidia_modprobe  usr.bin.firefox                       usr.lib.libreoffice.program.soffice.bin  usr.sbin.cupsd         usr.sbin.tcpdump
  force-complain  sbin.dhclient    usr.bin.man                           usr.lib.libreoffice.program.xpdfimport   usr.sbin.ippusbxd
  local           tunables         usr.lib.libreoffice.program.oosplash  usr.lib.snapd.snap-confine.real          usr.sbin.mysqld

* Disable AppArmor for a single profile:
``` bash
sudo ln -s /etc/apparmor.d/usr.sbin.mysqld /etc/apparmor.d/disable/
apparmor_parser -R /etc/apparmor.d/disable/usr.sbin.mysqld
``` 

  Executing the apparmor_status now should not list the /usr/sbin/mysqld in the enforce mode.

* Disable AppArmor completely execute:
``` bash
sudo systemctl disable apparmor
```


# Terraform install vms
```bash
terraform init
terraform plan
terraform apply -auto-approve
```