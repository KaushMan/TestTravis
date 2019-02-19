#Create gitup files
cd /usr/share/
sudo mkdir gitup
cd gitup
sudo touch repositories.csv
sudo echo "local_path,last_pulled" | sudo tee repositories.csv > /dev/null
sudo echo "/tmp/testrepo,0" | sudo tee -a repositories.csv > /dev/null
#echo "Contents of repositories.csv:"
#sudo cat repositories.csv

cd /tmp
mkdir testrepo
cd testrepo
git init

#Start the daemon
cd /home/travis/build/KaushMan/TestTravis/daemon
echo ""
echo ""
echo ""
echo ""
echo ""
echo "starting daemon in:"
pwd
echo "Pip list:"
pip list
echo ""
echo ""
echo ""
echo ""
python start_daemon.py

#Stop the daemon
python stop_daemon.py
