resource "docker_image" "foo" {
  name         = "nginx:latest"
  keep_locally = true
}

resource "docker_container" "foo" {
  name  = "tf-test"
  image = docker_image.foo.latest

  ports {
    internal = 80
  }
}
