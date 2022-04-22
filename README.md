# Debian

# Adicionando ao github

git add .

git commit -m ""

git push -u origin main

git remote set-url git@github.com:frib3iro/debian.git


# O branch padrão foi renomeado!

# master agora se chama main

# Se você tiver um clone local, poderá atualizá-lo executando os comandos a seguir.

git branch -m master main

git fetch origin

git branch -u origin/main main

git remote set-head origin -a

