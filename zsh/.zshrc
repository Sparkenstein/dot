export SPRK_SERVER_URL="https://i.sprk.pw/"
export SPRK_API_KEY=""
# export SPRK_SERVER_URL="http://localhost:3000/"
# export SPRK_API_KEY="s"

# urxvt TERM fix
export TERM=linux
source ~/.zsh/antigen

antigen use oh-my-zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle git
antigen bundle chrissicool/zsh-256color
# antigen bundle lein
antigen bundle command-not-found
antigen bundle autojump
antigen bundle npm

# antigen theme iplaces/astro-zsh-theme
antigen theme geometry-zsh/geometry

antigen apply

export PATH="$PATH:/home/spark/bin/"
export PATH="$PATH:/home/spark/Downloads/flutter/bin/"
# export PATH="$PATH:/home/spark/Android/Sdk/platform-tools"
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export LDFLAGS="-L/home/linuxbrew/.linuxbrew/opt/isl@0.18/lib"
export CPPFLAGS="-I/home/linuxbrew/.linuxbrew/opt/isl@0.18/include"


# ALIASES
source ~/.zsh/aliases

vps(){
	if [ ! $1 ]; then
	    echo "Please provide server name";
	    return 1;
	fi
	gcloud compute --project "winged-vigil-187217" ssh --zone "us-east1-b" "$1"
	return 0;
}


GEOMETRY_PROMPT_PLUGINS=(exec_time git node rustup)

export NVS_HOME="$HOME/.nvs"
[ -s "$NVS_HOME/nvs.sh" ] && . "$NVS_HOME/nvs.sh"

export PATH="$(yarn global bin):$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
eval $(thefuck --alias)
