#!/bin/sh
. ./vm-var.sh

# Questo codice è sotto licenza gpl, chiunque può usarlo/modificarlo/ridistribuirlo
# Autore: Giancarlo Martini - [giancarlomartiniATgmail.com]
# Data: 01/07/2022
# Maggiori info su:https://libvirt.org/manpages/virsh.html

# Creazione della vm con nome passato come argomento allo script
# Viene usato un disco row predisposto per il cloud
# La vm si troverà sulla stessa rete dell'host

echo "Creazione del disco per la vm:" $VM_NAME
qemu-img convert -f qcow2 -O qcow2 extra/debian-11-nocloud-amd64.qcow2 ${VM_DISK}
echo "-------------------------------------\n"

echo "Controllo disco per la vm:" $VM_NAME
file  ${VM_DISK}
echo "-------------------------------------\n"

echo "Controllo dimensione vm:" $VM_NAME
du ${VM_DISK}
echo "-------------------------------------\n"

echo "Info disco vm:" $VM_NAME
qemu-img  info ${VM_DISK}
echo "-------------------------------------\n"

echo "Ridimensionamento disco (portato a 30G) vm:" $VM_NAME
qemu-img resize ${VM_DISK} 30G
echo "-------------------------------------\n"

echo "Controllo disco vm:" $VM_NAME
qemu-img  info ${VM_DISK}
echo "-------------------------------------\n"

echo "Creazione vm:" $VM_NAME
virt-install \
    --memory 2048 \
    --vcpus 1 \
    --name $VM_NAME \
    --disk ${VM_DISK},device=disk,bus=virtio,format=qcow2 \
    --network bridge=br0,model=virtio \
    --os-variant debian10 \
    --virt-type kvm \
    --graphics none \
    --import

#    --extra-args "ip=192.168.1.11:255.255.255.0" \
#--network network=default,model=virtio \
