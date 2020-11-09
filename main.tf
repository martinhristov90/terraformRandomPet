resource "random_pet" "animal" {
  separator = "----"

  # Printing the value of the randomly generated pet.
  provisioner "local-exec" {
    command = "echo Here is a random pet name : ${random_pet.animal.id}"
  }
}
