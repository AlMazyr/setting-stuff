# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/alem/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# user options
autoload -Uz promptinit
promptinit
prompt_suse_setup

# key bindings
bindkey "^[[3~" delete-char

# additional options
setopt menucomplete
zstyle ':completion:*' menu select=1 _complete _ignored _approximate
setopt correct

# aliases
alias ls='ls --color=auto'
alias tree='tree -C'
alias qemu_custom_kernel='qemu-system-x86_64 -kernel /boot/vmlinuz-4.12.0-rc4-ARCH+ -initrd /boot/initramfs-4.12.0-rc4-ARCH+.img -append 'console=ttyS0' -nographic'
alias mk_initramfs_custom='sudo mkinitcpio -c /etc/mkinitcpio_custom.conf -k 4.12.0-rc4-ARCH+ -g /boot/initramfs-4.12.0-rc4-ARCH+.img'
