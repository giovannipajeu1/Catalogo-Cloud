# Catalogo de Cloud
Este repositório contém arquivos Terraform para provisionar infraestrutura na nuvem, focado em Kubernetes e Docker. 
Todos os recursos são configurados via Terraform para Google Cloud Platform (GCP), Microsoft Azure, Oracle Cloud Infrastructure (OCI) e Amazon Web Services (AWS).

## Estrutura do Repositório

- `gcp/`: Contém os arquivos Terraform para provisionar recursos na GCP.
- `azure/`: Contém os arquivos Terraform para provisionar recursos na Azure.
- `oci/`: Contém os arquivos Terraform para provisionar recursos na OCI.
- `aws/`: Contém os arquivos Terraform para provisionar recursos na AWS.

## Pré-requisitos

- Você deve ter uma conta ativa na respectiva nuvem (GCP, Azure, OCI, AWS).
- Instale o Terraform em sua máquina local. Consulte [aqui](https://learn.hashicorp.com/tutorials/terraform/install-cli) para obter instruções de instalação.

## Configuração

1. Clone este repositório em sua máquina local:

   ```bash
   git clone https://github.com/seu-usuario/Catalogo-de-Cloud.git
   cd Catalogo-Cloud
2. Altere para o diretório da nuvem desejada (gcp, azure, oci, aws).

3. Inicialize o Terraform e aplique as configurações:
   ```bash
   terraform init
   terraform apply

