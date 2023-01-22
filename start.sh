if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Silent0070/nb  /nb
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /nb 
fi
cd /nb
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
