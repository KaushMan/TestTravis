#Install GitPython and inotify
sudo -H pip install GitPython
sudo -H pip install inotify

#Create gitup files
cd /usr/share/
sudo mkdir gitup
cd gitup
sudo touch repositories.csv
sudo chmod +w repositories.csv
#sudo cat "local_path,last_pulled \n /tmp/testrepo,0" > repositories.csv
sudo cat "local_path,last_pulled \n /tmp/testrepo,0" | sudo tee repositories.csv > /dev/null

cd /tmp
mkdir testrepo
cd testrepo
git init

#Start the daemon
cd /home/travis/build/KamdenChew/TestTravis/daemon
python3.7 start_daemon.py

#Stop the daemon
python3.7 stop_daemon.py
