# GithubTerraform

## This section will be used to add coding comments and walk throughs

Always rememeber to create a git ignore file otherwise you write large files back to github and it errors.

Also remember to use an existing RG in the code, creating a new one wont work as Pluralsight doesnt allow this!

Making a chnage to see if i can push and commit a change in Readme

Method for working with Git, GutHub and Terraform

Create local repo folder
Create the following files in the local repo
1. An empty Main.tf
2. A populated .gitignore -
# Terraform
.terraform/
*.tfstate
*.tfstate.backup
crash.log
override.tf
override.tf.json
*_override.tf
*_override.tf.json
.terraform.lock.hcl
.terraform/
*.tfstate
*.tfstate.backup

if you dont set up the gitignore file large files are written back to Github, they cause an error and are very difficult to fix

Once happy put some code into the Main.tf

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "1-6f60cb81-playground-sandbox"
  location = "southcentraluscls"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "wisbeech-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

Things to remember

login to AZ 
Dont write the script trying to create new RG, Pluralsight does not allow this
Use and existing RG

create a Github Repo, name the same as the local Repo and then link them - use the below to link local and remote repo =


Git init to initialise a folder and create an empty repo Locally

Then create a same named repo in Github

Run this - git remote add origin <URL>

Then verify - git remote -v

Check the remote repo.

Terraform - 

terraform init
terrafrom plan
terrafor apply
terraform destroy

Check AZ admin to see if the resource has been built.

To do -

Not convinced you eed to have skip_provider_registration = true Think that was jsut a workaround to get the scitp working as i was accidentally trying to create a new RG and dont have the rights.




