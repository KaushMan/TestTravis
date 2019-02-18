echo "Initial directory:"
pwd
echo "Subdirectories:"
ls
pwd
echo "Python3 version:"
python3 --version

#Install GitPython and inotify
sudo pip3 install GitPython
sudo pip3 install inotify

#Create gitup files
cd /usr/share/
sudo mkdir gitup
cd gitup
sudo touch repositories.csv
sudo cat "local_path,last_pulled \n /tmp/testrepo,0" > repositories.csv

cd /tmp
mkdir testrepo
cd testrepo
git init

#Start the daemon
cd /home/travis/build/KamdenChew/TestTravis/daemon
python3.7 start_daemon.py

#Stop the daemon
python3.7 stop_daemon.py
