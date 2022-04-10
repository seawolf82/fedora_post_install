sudo dnf autoremove
sudo dnf update -y
sudo dnf install symlinks
sudo symlinks -r /usr | grep dangling
sudo symlinks -r -d /usr
sudo dnf remove $(sudo dnf repoquery --extras --exclude=kernel,kernel-\*)
sudo rpm --rebuilddb
sudo fixfiles -B onboot
