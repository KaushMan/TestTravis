#Install GitPython and inotify
echo "Pip3 version:"
echo pip3.7 --version
sudo pip3.7 install GitPython
sudo pip3.7 install inotify

#Create gitup files
cd /usr/share/
sudo mkdir gitup
cd gitup
echo "initializing repositories.csv"
sudo touch repositories.csv
echo "initialized repositories.csv"
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
