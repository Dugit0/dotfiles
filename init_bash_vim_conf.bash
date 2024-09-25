# #!/bin/bash
touch "$HOME/.vimrc"
cp "$HOME/.vimrc" "$HOME/.vimrc.bak"
echo 'source ~/.config/vim/vimrc' > "$HOME/.vimrc"
# cat "$HOME/.vimrc"
touch "$HOME/.bashrc"
cp "$HOME/.bashrc" "$HOME/.bashrc.bak"
echo 'source ~/.config/bash/bashrc' >> "$HOME/.bashrc"
# cat "$HOME/.bashrc"
