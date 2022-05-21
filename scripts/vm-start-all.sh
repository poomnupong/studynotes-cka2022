# stop all VMs in the resource group
# sample from this page:
# https://www.red-gate.com/simple-talk/blogs/start-stopping-virtual-machines-resource-group/
RG=man-lab-cka20211229-rg
az vm start --ids $(az vm list --resource-group $RG --query "[].id" -o tsv)
unset RG

# check status of vms
# az vm list -g $RG -d -otable