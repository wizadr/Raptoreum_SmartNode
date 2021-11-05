#!/bin/bash

DIR='/raptoreum/.raptoreumcore'
BOOTSTRAP_TAR='https://github.com/wizadr/Raptoreum_SmartNode/releases/download/testnet/bootstrap.tgz'

if [ ! -d $DIR ]; then
  mkdir -p $DIR
  curl -L $BOOTSTRAP_TAR | tar xz -C $DIR
else
  echo "Datadir has been detected so bootstrap will not be used..."
fi
