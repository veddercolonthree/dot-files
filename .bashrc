#
# ~/.bashrc
#

PATH=$PATH:/home/vedder/coding/scripts
# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \w]\$ '

if [ "$TERM_PROGRAM" != "vscode" ]; then
    fastfetch
fi

alias dotfiles="/usr/bin/git --git-dir=$HOME/dot-files --work-tree=$HOME"
alias dotfilesREADME="/usr/bin/git --git-dir=$HOME/dot-files --work-tree=$HOME/dot-files"

alias niriconfig="vim ~/.config/niri/config.kdl"
alias update="sudo pacman -Syu; sudo flatpak update; yay -Syu; sudo npm update"
alias restartWaybar="pkill waybar; systemctl --user restart waybar.service"
alias lock="swaylock --clock -i ~/Pictures/wallpapers/nature/nightfield.png --indicator-idle-visible --effect-blur 5x2"
alias switch="cd; ./Games/ryujinx-canary-1.3.266-linux_x64/publish/Ryujinx"
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias davinciConvert="cd Davinci && davinconv -C"

export PATH=$PATH:/home/vedder/.spicetify
# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh
