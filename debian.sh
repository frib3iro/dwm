Por padrão, o sudo não está instalado no Debian, mas você pode instalá-lo. Primeiro ative o modo su:

$ su -

Instale o sudo executando:

# apt-get install sudo -y

Depois disso, você precisaria brincar com usuários e permissões. Dê o sudo diretamente ao seu próprio usuário.

# usermod -aG sudo yourusername

Verifique se o arquivo sudoers foi adicionado ao grupo sudo. Execute:
visudopara modificar o arquivo sudoers e adicione a seguinte linha (se estiver faltando):

# Allow members of group sudo to execute any command

%sudo   ALL=(ALL:ALL) ALL

Você precisa se conectar ou reiniciar completamente o dispositivo para que as alterações entrem em vigor.

