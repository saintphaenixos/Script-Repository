#This is a simple script to reach out and download the latest stable VirtIO drivers for Windows to operate in QEMU/KVM for my purposes.

#Written for Pima Community College by Kent DuBack II 11.1.2021

#Change directory and download the .iso
cd ~\Downloads
Start-BitsTransfer https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/stable-virtio/virtio-win.iso

#Mount the ISO and begin installation:
Mount-DiskImage -ImagePath virtio-win.iso
