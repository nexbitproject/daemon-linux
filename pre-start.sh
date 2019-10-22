#!/bin/bash


sudo apt-get -qq update

sudo apt-get -qq upgrade
echo "Autoremoving unneeded dependencies..."
sudo apt-get -qq autoremove
echo "Installing dependencies..."
sudo apt-get -qq install wget htop xz-utils build-essential libtool autoconf automake software-properties-common
echo "Adding repositories..."
sudo add-apt-repository -y ppa:bitcoin/bitcoin
echo "Updating added repository lists..."
sudo apt update
echo "Installing tools..."
sudo apt-get -qq install protobuf-compiler git pkg-config aptitude
sudo apt-get install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils git cmake libboost-all-dev libgmp3-dev
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:bitcoin/bitcoin
sudo apt-get update
sudo apt-get install libdb4.8-dev libdb4.8++-dev
sudo apt-get install libdb5.3++-dev
sudo apt-get install libminiupnpc-dev
