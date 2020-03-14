echo "----- INITIALIZING UBUNTU SETUP SCRIPT -----"


echo "----- Updating Ubuntu -----"
sudo apt update -y && sudo apt upgrade -y 

echo "----- Installing Basic Utils -----"
echo " Curl "
sudo apt install curl -y
echo " Vim "
sudo apt install vim -y

echo "----- Terminal Setup -----"
echo " font-firacode "
sudo apt install font-ficacode -y

echo " spaceship terminal "
curl -fsSL https://starship.rs/install.sh | bash
echo 'eval "$(starship init bash)"' >> ~/.bashrc

echo "----- Applications -----"
echo " vscode "
sudo snap install --classic code

wget https://download-cf.jetbrains.com/toolbox/jetbrains-toolbox-1.16.6319.tar.gz
tar -xnf jetbrains-toolbox-1.16.6319.tar.gz
./jetbrains-toolbox-1.16.6319/jetbrains-toolbox -y

echo "----- Cleaning Up -----"
sudo apt autoremove -y
