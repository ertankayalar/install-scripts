
# make sure you’ve enabled virtualization in on your computer.
# It should be above 0
# egrep -c '(vmx|svm)' /proc/cpuinfo

sudo apt update
sudo apt upgrade

# Install KVM and QEMU: Install the necessary packages for virtualization by running the following command:
# sudo apt install -y qemu-kvm libvirt-clients libvirt-daemon-system virtinst bridge-utils

# Install QEMU and Virtual Machine Manager
sudo apt install qemu-kvm qemu-system qemu-utils python3 python3-pip libvirt-clients libvirt-daemon-system bridge-utils virtinst libvirt-daemon virt-manager -y

# Verify that Libvirtd service is started
sudo systemctl status libvirtd.service


# we start the default and make it auto-start after reboot.
sudo virsh net-start default

# Network default started
sudo virsh net-autostart default

# Network default marked as autostarted. Check status with:
sudo virsh net-list --all


# Add user to the libvirt group: By default, libvirt commands require root privileges. 
# To allow regular users to use these commands, add your user account to the "libvirt" group:
sudo adduser $USER libvirt
sudo adduser $USER libvirt-qemu

sudo usermod -aG libvirt $USER
sudo usermod -aG libvirt-qemu $USER
sudo usermod -aG kvm $USER
sudo usermod -aG input $USER
sudo usermod -aG disk $USER

# Verify installation: Confirm that the virtualization modules are loaded 

lsmod | grep kvm
