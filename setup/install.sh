tmp_root="$HOME/dotfiles/pak/railstpl.pak"
tmp_dest="/usr/local/bin"

echo " Installing - railstpl.pak"
sudo ln -nfs $tmp_root/bin/railstpl $tmp_dest/railstpl
echo " done"
echo
