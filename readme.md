## This reposistory is created with learning purposes for Terraform, focusing on random provider and random_pet resource.

## Purpose :

- It provides a simple example of how to use Terraform `random` provider and `random_pet` resource.

## How to install terraform : 

- The information about installing terraform can be found on the HashiCorp website 
[here](https://learn.hashicorp.com/terraform/getting-started/install.html)

## How to use it :

- In a directory of your choice, clone the github repository :
    ```
    git clone https://github.com/martinhristov90/terraformRandomPet.git
    ```

- Change into the directory :
    ```
    cd terraformRandomPet
    ```
- Run `terraform init` to download the `random` provider.

- Run `terraform plan` to see what actions are going to be performed Terraform. Output should look like this :
    ```
    ------------------------------------------------------------------------

    An execution plan has been generated and is shown below.
    Resource actions are indicated with the following symbols:
      + create

    Terraform will perform the following actions:

      + random_pet.animal
          id:        <computed>
          length:    "2"
          separator: " "


    Plan: 1 to add, 0 to change, 0 to destroy.

    ------------------------------------------------------------------------
    ```

- Now you can run `terraform apply` to create the `random_pet` resoruce, the output will look like this :
    ```
    random_pet.animal: Creating...
      length:    "" => "2"
      separator: "" => " "
    random_pet.animal: Provisioning with 'local-exec'...
    random_pet.animal (local-exec): Executing: ["/bin/sh" "-c" "echo Here is a random pet name : clear boar"]
    random_pet.animal (local-exec): Here is a random pet name : clear boar
    random_pet.animal: Creation complete after 0s (ID: clear boar)

    Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
    ```

- In order to destroy the created resources, you can use `terraform destroy`.