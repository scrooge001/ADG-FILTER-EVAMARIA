if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/scrooge001/adgsearch2022.git /adgsearch2022

else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /adgsearch2022

fi
cd /adgsearch2022
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py