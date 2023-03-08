 Semplici script per creare/gestire macchine virtuali
vm-create-and-start-from-template.sh
	Clona un immagine cloud di debian che si trova in extra e l'avvia, lo script necessita del nome della vm
		es. vm-start-from-template.sh vm1

vm-remove.sh
	Rimuove una macchina virtuale, lo script necessita del nome della vm

vm-shutdown.sh
	Spenge una macchina virtuale, lo script necessita del nome della vm

vm-list.sh
	Mostra le macchine virtuale presenti

vm-start.sh
	Avvia una macchina virtuale esistente, lo script necessita del nome della vm

vm-start.sh
	Si connette ad macchina virtuale esistente, lo script necessita del nome della vm

vm-var.sh
	Predispone l'ambiente per gli altri scripts
	
Directory doc
0-host-config.txt
	Configurazione dell'host
1-host-net-config.txt
	Configurazione della rete dell'host
2-disk-prepare.txt
	Informazioni sul disco che viene clonato
3-guest-first-config.txt
	Passi per configurare, la prima volta la vm quando avviata

Directory extra
	Contiene l'immagine del disco che verrà clonato alla creazione della vm
