resource "random_pet" "animal" {
  separator = "--"

  # Printing the value of the randomly generated pet.
  provisioner "local-exec" "printing" {
    command = "echo1 Here is a awesome random pet name : ${random_pet.animal.0.id}"
  }
}
