if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Sandeepbots/SB_autofilter /SB_autofilter
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /SB_autofilter
fi
cd /SB_autofilter
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
