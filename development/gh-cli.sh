(type -p wget >/dev/null || (sudo apt update && sudo apt install wget -y)) &&
  sudo mkdir -p -m 755 /etc/apt/keyrings &&
  out=$(mktemp) && wget -nv -O$out https://cli.github.com/packages/githubcli-archive-keyring.gpg &&
  cat $out | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg >/dev/null &&
  sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg &&
  sudo mkdir -p -m 755 /etc/apt/sources.list.d &&
  echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list >/dev/null &&
  sudo apt update &&
  sudo apt install gh -y

az login
gh auth login --hostname github.com
gh auth login --hostname databalk.ghe.com

mkdir -p ~/dev/databalk/
mkdir -p ~/dev/tcr-it/

git clone databalk@databalk.ghe.com:DataBalk/1.1.Vastgoedtabel.git ~/dev/databalk/vgt
git clone databalk@databalk.ghe.com:DataBalk/1.1.Vastgoedtabel-Resub.git ~/dev/databalk/pubsub/
make ~/dev/databalk/pubsub/Makefile set-secrets

git clone git@github.com:coendewit/emailbroker-go.git ~/dev/tcr-it/emailbroker-go
