
# urxvt TERM fix
export TERM=linux

export PATH="$PATH:/home/spark/bin/"
export PATH="$PATH:/home/spark/Downloads/flutter/bin/"
# export PATH="$PATH:/home/spark/Android/Sdk/platform-tools"
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export LDFLAGS="-L/home/linuxbrew/.linuxbrew/opt/isl@0.18/lib"
export CPPFLAGS="-I/home/linuxbrew/.linuxbrew/opt/isl@0.18/include"

GEOMETRY_PROMPT_PLUGINS=(exec_time git node rustup)


export NVS_HOME="$HOME/.nvs"
[ -s "$NVS_HOME/nvs.sh" ] && . "$NVS_HOME/nvs.sh"

export PATH="$(yarn global bin):$PATH"
export PATH="$HOME/.cargo/bin:$PATH"


eval $(thefuck --alias)