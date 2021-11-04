#!/bin/bash

DIR='/raptoreum/.raptoreumcore'
BOOTSTRAP_TAR='https://github.com/Raptor3um/raptoreum/releases/download/1.3.15.99/testnet_bootstrap_with_indexes.zip'

if [ ! -d $DIR ]; then
  mkdir -p $DIR
  curl -L $BOOTSTRAP_TAR | unzip -C $DIR
else
  echo "Datadir has been detected so bootstrap will not be used..."
fi
