set -e

sudo apt-get install -y \
  git-core \
  python-setuptools \
  python-imaging \
  python-dev \
  python-pip
  
git clone git://git.drogon.net/wiringPi
cd wiringPi
sudo ./build
git clone https://github.com/Gadgetoid/WiringPi2-Python.git
cd WiringPi2-Python/
sudo python setup.py install
./build.sh
cd ..
git clone https://github.com/doceme/py-spidev
cd py-spidev
sudo python setup.py install
cd ..
git clone https://github.com/guyc/py-gaugette.git
cd py-gaugette
sudo python setup.py install
cd
sudo pip install wiringpi
cd OLED/python-examples
wget http://www.ralphmag.org/HS/penguins900x600.jpg # This downloads a picture of a penguin for one of the Python examples
cd