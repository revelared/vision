#!/usr/bin/env bash

DIR="`dirname "$0"`"
cd "$DIR/../../../"

source ~/.profile &> /dev/null
source ~/.bashrc &> /dev/null

export PATH="/usr/local/bin:/opt/local/bin:/sw/local/bin:$PATH"
RUBY="`which ruby`"

if [[ -f "vision.rb" ]]; then 
  echo "Vision coming up..."
  echo "=> `uname -sr` on `machine`"
  echo "=> using $RUBY"
  echo "=> `$RUBY -v`"
else
  echo "=> Could not find vision.rb in same directory as Vision.app" 
  echo "=> Please only use Vision.app when its in the original directory"
  exit 1
fi


exec $RUBY vision.rb