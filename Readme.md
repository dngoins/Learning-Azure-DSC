# Learning-Azure-DSC

Learning Azure Desired State Configuration for use with Azure DevOps practices.

Azure provides a DSC Pull server, which can check for VM Server state changes and make sure your VM is always in compliance with your powershell desired state configuration file.

## Steps to configure in Azure

1. Create a Azure/AWS VM that you want to use. (if you want to use a local machine you must configure it to point to a DSC Pull server - google that it's there)
2. Create a .ps1 DSC Configuration file similar to ConfigureWeb.ps1
3. Test the PS1 file on your local machine by running the configuration in a powershell command prompt.
4. Create an Azure Automation account.
5. In the Azure Automation account select desired state configuration
6. Add a new Configuration, upload the ps1 file.
7. Click on "Compile" to verify and validate your powershell can run.
8. Once compiled, Click on the Node tab in the Desired State Configuration section of the Azure Automation app.
9. Add a new node - select the VM (AWS or Azure or local machine you want to use).
10. Select the Configuration node to apply.
11. That's it...!