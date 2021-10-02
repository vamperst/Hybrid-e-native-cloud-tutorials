
1. Execute o comando `cd ~/environment/Hybrid-e-native-cloud-tutorials/01-Terraform/demos/05-Workspaces/` para entrar na pasta do exercicío.
2. Utilizando o IDE altere o arquivo state.tf que esta em 'Hybrid-e-native-cloud-tutorial/01-Terraform/demos/Workspaces' para adicionar o bucket para estado remoto que criou no ultimo módulo.
3. Execute o comando `terraform init` para inicializar o terraform. Caso tenha dado erro porque o nome do bucket esta incorreto você terá que apagar a pasta .terrafom com o comando `rm -rf .terraform`, arrumar o nome e executar novamente o init.
4. Crie um novo workspace com o comando `terraform workspace new dev`
5. Crie outro workspace com o comando `terraform workspace new prod`
6. Para voltar ao ambiente dev execute `terraform workspace select dev`
7. Para listar todos os workspaces execute `terraform workspace list`, note que um workspace default esta listado ele é criado pelo terraform automaticamente.
8. Rode o apply com cada um dos ambiente e note que serão gerados arquivos diferentes para cada workspaces dentro da pasta 'modules'.
9. Se for no Bucket verá que foi criada uma estrutura de pastas para os workspaces que criou. E dentro das pastas prod e dev tem um arquivo 'workspaces' que é o estado do workspace em questão.
10. De volta ao terminal execute um comando `ls modules/file/*.txt`, vai ver para para cada apply que fez foi criado um arquivo para o workspace.
11. No workspace 'prod' execute o comando `terraform destroy -auto-approve`. 
12. Verifique o arquivo txt do prod não esta mais na pasta mas o dev esta intacto. 
13. Olhe no arquivo referente ao ambiente prod no bucket do S3, ao ler o mesmo irá notar que esta vazio. 