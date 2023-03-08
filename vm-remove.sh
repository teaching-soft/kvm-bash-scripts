#!/bin/sh
. ./vm-var.sh


# Questo codice è sotto licenza gpl, chiunque può usarlo/modificarlo/ridistribuirlo
# Autore: Giancarlo Martini - [giancarlomartiniATgmail.com]
# Data: 01/07/2022
# Maggiori info su:https://libvirt.org/manpages/virsh.html

# Rimuove la vm passata come argomento e relativo disco

# Recupera il percorso dello script per cancellare il disco
echo "Cancello il disco:" ${FULL_PATH}
PWD_PATH=`pwd`
FULL_PATH=${PWD_PATH}/disk/${VM_NAME}-disk.qcow2 #${VM_DISK}
virsh vol-delete --pool disk ${FULL_PATH} 
#rm ${VM_DISK} se non funziona il precedente ...
echo "----------------------------"

# Cancella eventuali snapshot
echo "Cancello eventuali snapshot"
virsh snapshot-delete --domain $VM_NAME --current
echo "----------------------------"

# Cancellazione vm
echo "Cancello la vm"
virsh undefine $VM_NAME
virsh destroy $VM_NAME



