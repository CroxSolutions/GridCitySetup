# Dev Server
alias home="cd ~";
alias dev=". /home/ubuntu/devMenu.sh";
alias GridCity="cd ~/GitHub/GridCity;clear;git status;";
alias BlindAlive="cd ~/GitHub/Blind-Alive/ubuntu;clear;git status;";
alias YouHangIt="cd ~/GitHub/YouHangIt/ubuntu/SoT/;clear;git status";
alias ReblCrew="cd ~/GitHub/ReblCrewProductions/ubuntu;clear;git status;";

alias dbConn="mysql --defaults-file=/home/ubuntu/dbBackup/root.cnf -u root";
alias dbConnGridCity="mysql --defaults-file=/home/ubuntu/dbBackup/root.cnf -u root gridCity";
alias dbConnGridCityV2Clu="mysql --defaults-file=/home/ubuntu/dbBackup/gcv2_clu.cnf -u clu GridCityV2";
alias dbConnGridCityV2Tron="mysql --defaults-file=/home/ubuntu/dbBackup/gcv2_tron.cnf -u tron GridCityV2";
alias dbConnBlindAlive="mysql --defaults-file=/home/ubuntu/dbBackup/ba.cnf -u root blindAliveBuyPortal";
alias dbBlindAliveRestore="mysql --defaults-file=/home/ubuntu/dbBackup/ba.cnf -u root blindAliveBuyPortal < /home/ubuntu/dbRestore/blindAliveBuyPortal.sql;cowsay restore complete";
alias dbConnYouHangIt="mysql --defaults-file=/home/ubuntu/dbBackup/yhi.cnf -u root yhi";

# helpers
alias Rabbit="LS -al;sudo apt-get update;sudo apt-get -y dist-upgrade;clear;cowsay update complete;";
alias FluShot="sudo apt-get -y autoremove;cowsay autoremove complete";
alias smallPox="sudo service apache2 reload;sudo service apache2 restart;cowsay apache rebooted;";
alias PepperJack="cmatrix -s";
alias crox="cmatrix -s;";
alias train="LS -al";
alias busyTime="cat /dev/urandom | hexdump | grep 'ca fe'";

#oops alias
alias sl="ls";
alias exti="exit";
alias ls-l="ls -l";
alias clera="clear";
alias lsa="ls -lah";

# BlindAlive backup
alias BlindAlive="cd ~/GitHub/Blind-Alive/ubuntu;clear;git status;";
alias BlindAliveBK="cd ~;. /home/ubuntu/Blind-Alive/ubuntu\ config/cron_reports_prod.sh > /dev/null;. /home/ubuntu/Blind-Alive/ubuntu\ config/cron_backup_prod.sh > /dev/null";

# YouHangIt Server
alias YouHangIt="cd ~/GitHub/YouHangIt/ubuntu/SoT/;clear;git status";
alias YouHangItBK="cd ~;. /home/ubuntu/GitHub/YouHangIt/ubuntu/config/cron_backup_prod.sh > /dev/null;. /home/ubuntu/GitHub/YouHangIt/ubuntu/config/cron_reports_prod.sh > /dev/null;cowsay backup complete";
