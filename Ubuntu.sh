# timezone
timedatectl set-timezone Asia/Taipei

# git
add-apt-repository -y ppa:git-core/ppa
apt install -y git
git config --global core.editor "vim"

# zsh
apt install -y zsh
# oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
perl -i -pe "s/ZSH_THEME=.*/ZSH_THEME=geoffgarside/g" ~/.zshrc
source ~/.zshrc

# php relation

## php
apt install php-cli
apt install php-curl

## composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '906a84df04cea2aa72f40b5f787e49f22d4c2f19492ac310e8cba5b96ac8b64115ac402c8cd292b8a03482574915d1a8') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer

## zip
apt install zip unzip php-zip
