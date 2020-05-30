# Demo material



## What are you going to learn?

This demo is designed to show you how to deploy a full storage system (like a NAS) that is hosted in Azure. We have also elected to use Terraform, which is an Infrastructure as Code (IaC) tool as it is much faster and better than using the Azure portal (Web UI). This allows us to programmatically define and deploy or infrastructure whole by the just running a single file.  

By doing this demo, we hope that you get a good look at how much easier it is to use the cloud and IaC rather than manually configuring infrastructure. 

## getting started (pre-requsits)

1. You will need an Azure subscription to do this tutorial. a free trial account can be created for this purpose ([link](https://azure.microsoft.com/en-us/free/))

2. Download and install Azure CLI ([link](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest))
> For Windows there no need any further configuration, for Mac/Linux (see [link](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest))

3. Download and install Terraform ([link](https://www.terraform.io/downloads.html))

> Installation instructions can be found here ([link](https://learn.hashicorp.com/terraform/getting-started/install.html))

3. if you want to make any changes  you can use any text editor, but we suggest using VS code, and the terraform extension 

> VS code can be found here ([link](https://code.visualstudio.com/))

5. Pull/download the repo and place it somewhere you can easily get to it (like the documents folder or downloads)

6. Follow the demo screencast (https://youtu.be/9sqdc24mobo)



## How to do the demo 

These are the main commands  used in the screencast

1. Use "az login" (part of Azure CLI) this will authenticate your terminal with Azure. 
2. Navigate in the terminal to where the [main.tf](https://github.com/Gabbi68/Infrastructure/blob/master/AzureStorage/main.tf) is saved.
3. Startup terraform by first doing: 

    terraform init

 4. Now error check and show actions by doing:

    terraform plan
    
4. Now let us deploy our code by doing:

    terraform apply 

6. after reviewing the output type 'yes' if you want to deploy to Azure.

