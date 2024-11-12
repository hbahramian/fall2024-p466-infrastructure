#resource "render_web_service" "web" {
#  name               = "primes-service"
#  plan               = "free"
#  region             = "ohio"
#
#
#  runtime_source = {
#    image = {
#      image_url   = "ghcr.io/hbahramian/primes-service",
#      tag = "latest"
#    }
#  }
#
#  environment_id = render_project.p466.environments.development.id
#
#}