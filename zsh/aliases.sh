# Shorter comman commands

alias nv='nvim'
alias rtop='radeontop -c'
alias -g rename="perl-rename"
alias -g noerr='2> /dev/null'

# Command sequences

alias mt-crypt="sudo cryptsetup open /dev/sda3 ncrypt && sudo mount /dev/mapper/ncrypt ~/ncrypt"

alias dl-mscore="npx dl-librescore@latest"
alias dl-mscore-m="npx dl-librescore@latest -o /home/main/audio/build/midi/ -t midi -i"
alias dl-mscore-p="npx dl-librescore@latest -o /home/main/audio/build/sheets/ -t pdf -i"

alias gr='cd $(git rev-parse --show-toplevel)'

alias kdbx-pull="rclone copyto remote:KeePassXC/Passwords.kdbx ~/passwords.kdbx"
alias kdbx-push="rclone copyto ~/passwords.kdbx remote:KeePassXC/Passwords.kdbx"

alias kssh="pstree -p | grep 'sshd-session\([0-9]*\)' -o | grep -o '[0-9]*' | xargs kill"

# Config editing

alias src='source /home/main/.zshrc'
alias rced="$VISUAL /home/main/.zshrc"

CONFIG="$HOME/.config"

ed() {
	case "$1" in
		zsh)
			(cd $HOME; $VISUAL "$HOME/.zshrc");;
		nv)
			(cd "$CONFIG/nvim"; $VISUAL "$CONFIG/nvim/lua/keymaps.lua");;
		qmk)
			(cd "$HOME/qmk_firmware/keyboards/cantor/keymaps/katarafett"; $VISUAL "$HOME/qmk_firmware/keyboards/cantor/keymaps/katarafett/keymap.c");;
		sway)
			(cd "$CONFIG/sway"; $VISUAL "$CONFIG/sway/config");;
		foot)
			(cd "$CONFIG/foot"; $VISUAL "$CONFIG/foot/foot.ini");;
		*)
			(cd "$CONFIG/$1"; $VISUAL "$CONFIG/$1");;
	esac
}

mktouch() {
	for i in "$@"; do
		mkdir -p "${i%/*}";
		touch "$i";
	done
}

alias sudo='sudo '
