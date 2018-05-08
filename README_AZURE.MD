## Azure Install process

### Gotchas/Requirements Outstanding.

   * Version Control. We have no private place to put this code. This is causing an issue as we need to manually transcribevariable only the Bastion.
   * DNS: would rather use hostnames in inventory, currently using IP addresses.

### The Installation sequence
1. Configure Resource Group, run :
   * bastion/bin/create_bastion_rg.sh
2. Create Bastion VM, run :
   * bastion/bin/create_bastion_vm.sh
3. Make sure you ~/.azure/credentials is correct   
4. Configure Bastion OS, run :
   * bastion/bin/configure_bastion_vm.sh
5. Logon to Bastion, sudo to root
6. Make sure your ~/.azure/credentials is correct on the Bastion (contains the correct Azure credentials)
7. Setup Azure credentials in root's .bash_profile, as this is currently where many privileged variables go. This will be the case until we get private config management. 
8. Run /root/casl-ansible/inventory/sample.azure.example.com.d/provision_vms_os.sh
   * This kicks off a two step process to install to install Openshift
      * Provision the VMs
      * Configure the OS
9. Now take note of : 
   * Public IP of the master loadbalancer (only necessary until we get DNS set up)
   * Public IP of infra loadbalancer (only necessary until we get DNS set up)
   * Account key for the storage account that was created 
10. The IP addresses noted above need to be substituted in the hosts file prior to the Openshift install. 
The Storage account value needs to go into root's .bash_profile, as this is currently where many privileged variables go.
This will be the case until we get private config management. Ensure that all the other values in root's .bash_profile are correct
11. Run /root/casl-ansible/inventory/sample.azure.example.com.d/install_ocp.sh. This will :        
      * Install Openshift
      * Do Azure specific post-install activiries for things like storage access.
      
Actions
1. Automate injection of LB IP addresses (until we get DNS)
     

Logging cert fix           
   * https://github.com/openshift/openshift-ansible/issues/7725