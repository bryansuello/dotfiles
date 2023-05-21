config files inside .ssh/

Host *
  AddKeysToAgent yes
  IdentityFile ~/.ssh/id_ed25519

Host github.com
  Hostname ssh.github.com
  Port 443
