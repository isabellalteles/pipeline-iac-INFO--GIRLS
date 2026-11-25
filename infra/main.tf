variable "ambiente" {
type = string
default = "homologacao"
}
resource "local_file" "ambiente" {
filename = "${path.module}/ambiente.txt"
content = "Ambiente: ${var.ambiente}\nEquipe: INFO-GIRLS\n"
}
output "arquivo_criado" {
value = local_file.ambiente.filename
}
