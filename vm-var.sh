#!/bin/sh

# Questo codice è sotto licenza gpl, chiunque può usarlo/modificarlo/ridistribuirlo
# Autore: Giancarlo Martini - [giancarlomartiniATgmail.com]
# Data: 01/07/2022
# Maggiori info su:https://libvirt.org/manpages/virsh.html

# Controlla che sia presente il nome della vm (o domain)

if [ "$#" -ne 1 ]; then
         echo "Manca il nome della macchina virtuale!\nESCO"
         exit 64
fi

VM_DIRECTORY_DISK="./disk"
if [ ! -d $VM_DIRECTORY_DISK ]; then
	echo "Primo avvio, la directory $VM_DIRECTORY_DISK non esiste, la creo"
	mkdir $VM_DIRECTORY_DISK
else
	echo "Directory per i dischi trovata, proseguo"
fi



# Viene creata una variabile d'ambiente, è usata negli altri script
export VM_NAME=$1

# Viene creata una variabili d'ambiente, è usata negli altri script,
# Rappresenta l'unità disco della vm con percorso relativo
export VM_DISK=./disk/${VM_NAME}-disk.qcow2

# Controllo per individuare su quale host gira lo script, non usato
#THIS_HOST=$(hostname -f)
#if [ ${THIS_HOST} = "gianc-msi" ]; then
		#export IP_HOST="127.0.0.1"
#		export ETHERNET_PORT="eth0"
#    else
		#export IP_HOST="192.168.1.4"
#		export ETHERNET_PORT="eno2"
#fi

