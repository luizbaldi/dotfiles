#!/usr/bin/env bash

# Location of the cloned dotfiles repository
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Backup old files
backup_dir=$HOME/.dotfiles_backup
[ -d $backup_dir ] || mkdir $backup_dir || exit 1

files_to_backup=(
    .zshrc
)

for file in ${files_to_backup[@]}; do
    echo -n "Doing backup for $file... "
    mv $HOME/$file $backup_dir 2> /dev/null && echo "done!" || echo "not found, skipping..."
done

### Dependencies
# Oh my Zsh for zsh, of course
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Copying new dotfiles
files_to_copy=(
    zshrc
    i3
)

for file in ${files_to_copy[@]}; do
    cp $DIR/$file $HOME/.$file -rv
done

echo "Everything is ready, hurray!"

exit 0