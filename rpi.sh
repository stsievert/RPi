sudo apt-get update
sudo apt-get install vim
# installing python-stuff
sudo apt-get install python-numpy
sudo apt-get install python-scipy
sudo apt-get install python-matplotlib
sudo apt-get install ipython-qtconsole

# downloading cpufrequtils
sudo apt-get install cpufrequtils

# launching x at boot
#cd /etc
    # no login
#sudo sed -i -E 's/1:2345:respawn:\/sbin\/getty 115200 tty1/1:2345:respawn:\/bin\/login -f pi tty1 <\/dev\/tty1 >\/dev\/tty1  2>\&1/g' inittab

    # startx
#sudo sed -i -E  's/exit 0//g' rc.local
#sudo echo su  pi -c startx >> rc.local
#sudo echo exit 0 >> rc.local


# ipython >> startx
#cd ~
#touch .xinitrc
#echo exec ipython qtconsole --pylab=inline --colors=Linux >> .xinitrc


## changing the font size and editor
# cd 
ipython profile create
#cd ~/.config/ipython/profile_default
#sed 's/# c.FontSize = 0/c.FontSize = 20/' ipython_qtconsole.py >> ipython_qtconsole.py
# sed 's/# c.IPythonWidget.font_size = 0/c.IPythonWidget.font_size = 20/' -i ipython_qtconsole_config.py

## setting the cpufreq
echo sudo cpufreq-set -u 700MHz
echo sudo cpufreq-set -d 50MHz

## setting the full screen.
cd /usr/lib/python2.7/dist-packages/IPython/frontend/qt/console
sudo cp mainwindow.py mainwindow.py.old

# for some reason, this works and sudo doesn't
sudo su
sudo curl https://raw.github.com/scottsievert/RPi/master/mainwindow.py >> mainwindow.py

# for SD card setup...
#   sudo diskutil unmount /dev/disk1s1
#   sudo dd bs=1m if=2013... of=/dev/rdisk1
#   sudo diskutil eject /dev/rdisk1
# then...
#   say "expand root_fs" in config menu  (sudo raspi-config)
#   change keyboard layout
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
