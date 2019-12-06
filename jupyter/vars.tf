# external variables 
variable "onoff_switch" {}
variable "node_pool" {}
variable "public_url" {}
variable "password" {}
variable "persistent_disk" {}
variable "app_name" {}
variable "external_port" {}

#internal variables
variable "jupyter.app_name" {
  default="jupyter"
}

variable "image" {
  default="gumlooter/dockerized_jupyter:latest"
}
  
variable "persistent_mount_path" {
  default="/home/jovyan/work"
}

variable "envs" {
  default = [
    {
      name="JUPYTER_ENABLE_LAB"
      value="yes"
    },
  ]
}

variable "command" {
  default = [
    "start-notebook.sh"
  ]
}

variable "args" {
  default = [
    "--notebook-dir=/home/jovyan/work/lab",
    "--NotebookApp.ip='0.0.0.0'",
    "--NotebookApp.token=''",
    "--NotebookApp.keyfile=/home/jovyan/work/cert/notebook.key",
    "--NotebookApp.certfile=/home/jovyan/work/cert/notebook.crt"
  ]
}

variable "terraform_timeout" {
  default = "10m"
}

variable "jupyter_port" {
  default = "8888"
}