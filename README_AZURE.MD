## Azure Install process
1. Configure Resource Group, run :
   * bastion/bin/create_bastion_rg.sh
2. Create Bastion VM, run :
   * bastion/bin/create_bastion_vm.sh
3. Make sure you ~/.azure/credentials is correct   
4. Configure Bastion OS, run :
   * bastion/bin/configure_bastion_vm.sh
5. Logon to Bastion, sudo to root
6. Make sure you ~/.azure/credentials is correct on the Bastion
7. Seup Azure credentials in var file or as Env variables.
8. Run /root/casl-ansible/inventory/sample.azure.example.com.d/provision.sh
   * This kicks of a four step process to install to install Openshift
      * Provision the VMs
      * Configure the OS
      * Install Openshift
      * Do Azure specific post-install activiries for things like storage access.
           
