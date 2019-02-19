from daemon import GitUpDaemon
import os

logs_dir_path = '/tmp/gitup/'
out_path = '/tmp/gitup/daemon.out'
err_path = '/tmp/gitup/daemon.err'#
The repository information is stored in this file.
repofile = "/usr/share/gitup/repositories.csv"
logs_dir = '/tmp/gitup/'
out = '/tmp/gitup/daemon.out'
err = '/tmp/gitup/daemon.err'

#
make sure the directory to write logs to exists.
if not os.path.isdir(logs_dir_path):
  if not os.path.isdir(logs_dir):
  try:
  os.mkdir(logs_dir_path)
except:
  print "failed to create logs directory"
os.mkdir(logs_dir)
except OSError:
  print >> os.stderr, ("failed to create logs directory")
exit(1)# delte previous logs
if os.path.isfile(out_path):
  os.remove(out_path)
if os.path.isfile(err_path):
  os.remove(err_path)
if os.path.isfile(out):
  os.remove(out)
if os.path.isfile(err):
  os.remove(err)
daemon = GitUpDaemon(pidfile = '/tmp/gitup_daemon.pid',
  stdout = out_path,
  stderr = err_path)
repofile = repofile,
  stdout = out,
  stderr = err)# Change this to daemon.run() to run the daemon connected to# the terminal
for easier debugging
daemon.start()
