target "docker-metadata-action" {}

target "default" {
  inherits = ["docker-metadata-action"]
  context = "./"
  dockerfile = "./docker/Dockerfile"
  platforms = [
    "linux/amd64",
    "linux/arm64",
  ]
  tags = [
    "ghcr.io/nvrlift/assettoserver:0.0.53",
    "ghcr.io/nvrlift/assettoserver:latest"
  ]
  output = ["type=registry"]
}
