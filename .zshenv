# Environment variables
export ZSH_CONFIG=~/.config/zsh
export OH_MY_ZSH=~/.oh-my-zsh
export ZSH_THEME=px-rose-pine

## Vim: default editor
export VISUAL=vim
export EDITOR=$VISUAL

export HYPRLAND_HEADERS="$HOME/repos/external/Hyprland"

export XCURSOR_THEME=Simp1e-Rose-Pine-Moon
export XCURSOR_SIZE=24

export JAVA_HOME=/usr/lib/jvm/java-21-openjdk

# Cargo
path+=($HOME'/.cargo/bin')

eval "$(fnm env --use-on-cd --shell zsh)"

# pnpm
export PNPM_HOME="/home/spxctre/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Aliases

## Yanking
alias yank='xsel -ib'
alias clip='yank'

## Pasting
alias out='xsel -ob'

## Clearing
alias cls='clear'

## Web Search
alias query='googler -n 15 --np'
alias qs='query'

## Rofi
alias rofl='rofi -disable-history -show drun'

## Neofetch
# alias neofetch='fastfetch'

alias unfuckmem='free -h && sudo sysctl -w vm.drop_caches=3 && sudo sync && echo 3 | sudo tee /proc/sys/vm/drop_caches && free -h'

# zsh plugins
source $OH_MY_ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# improved cd
eval "$(zoxide init --cmd cd zsh)"

run() {
    nohup "$@" </dev/null >/dev/null 2>&1 &
    disown
}
