# andasy.hcl app configuration file generated for github-readme-stats on Saturday, 07-Feb-26 17:16:23 SAST
#
# See https://github.com/quarksgroup/andasy-cli for information about how to use this file.

app_name = "github-readme-stats"

app {

  env = {}

  port = 3000

  compute {
    cpu      = 1
    memory   = 256
    cpu_kind = "shared"
  }

  process {
    name = "github-readme-stats"
  }

}