if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Jnanesh124/v7bot  /Cineplix
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Cineplix
fi
cd /Cineplix
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
