#!/bin/bash

# Questo codice è sotto licenza gpl, chiunque può usarlo/modificarlo/ridistribuirlo
# Autore: Giancarlo Martini - [giancarlomartiniATgmail.com]
# Data: 01/07/2022
# Maggiori info su:https://libvirt.org/manpages/virsh.html

# Collega una shell alla vm passata come argomento
# Se c'è già una console attiva usare l'opzione --force

. ./vm-var.sh
virsh console $VM_NAME


