#!/bin/sh
. ./vm-var.sh 

# Questo codice è sotto licenza gpl, chiunque può usarlo/modificarlo/ridistribuirlo
# Autore: Giancarlo Martini - [giancarlomartiniATgmail.com]
# Data: 01/07/2022
# Maggiori info su:https://libvirt.org/manpages/virsh.html

# Ordina lo shutdown alla vm passata come argomento
virsh shutdown $VM_NAME

