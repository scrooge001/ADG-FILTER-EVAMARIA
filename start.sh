if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/scrooge001/ADG-FILTER-EVAMARIA /ADG-FILTER-EVAMARIA

else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /ADG-FILTER-EVAMARIA

fi
cd /ADG-FILTER-EVAMARIA
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
