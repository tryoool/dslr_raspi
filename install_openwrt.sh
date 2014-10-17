#install svn
sudo apt-get install subversion
sudo apt-get install git
sudo apt-get install gawk
sudo apt-get install qemu-utils qemu qemu-system
sudo apt-get install libncurses5-dev

#install all kinds of dependencies
sudo apt-get install gcc g++ binutils patch bzip2 flex bison make autoconf gettext texinfo unzip sharutils ncurses-term zlib1g-dev 

# Make Directory for openwrt and get source
#mkdir openwrt
chmod -R 777 openwrt 
cd openwrt
svn checkout svn://svn.openwrt.org/openwrt/trunk
cd trunk
./scripts/feeds update  -a 
./scripts/feeds install -a 
./scripts/feeds update  packages luci 
./scripts/feeds install -a -p luci
cd ../
chmod -R 777 trunk
cd trunk
#cp ./.config trunk
cp ../dl/* ./dl/ -r
make V=99
