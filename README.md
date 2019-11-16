# daemon-linux
Nexbit Chain Daemon Linux
# How to Easily setup a node.
```bash
Rent a VPS minimal 5$ package is enough now
Create droplet ubuntu 18.04 64 bit
Choose Singapore/EU zone (Our most of the traffic comes from those zone)
We are using libboost 1.61.1, some linux distribution does not have that


Dependencies for Linux users
STEP-1
******
sudo apt-get -qq update
sudo apt-get -qq upgrade
sudo apt-get -qq autoremove
sudo apt-get install aptitude
sudo apt-get -qq install wget htop xz-utils build-essential libtool autoconf automake software-properties-common
sudo apt-get -qq install protobuf-compiler git pkg-config aptitude
sudo apt-get install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils git cmake libboost-all-dev libgmp3-dev
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:bitcoin/bitcoin
sudo apt-get update
sudo apt-get install libdb4.8-dev libdb4.8++-dev
sudo apt-get install libdb5.3++-dev
sudo apt-get install libminiupnpc-dev
sudo apt-get install libboost1.61.1
** If libboost creates problem
sudo add-apt-repository ppa:mhier/libboost-latest
sudo apt update
Then
Add this:  deb http://ppa.launchpad.net/mhier/libboost-latest/ubuntu bionic main
to " /etc/apt/sources.list "
sudo apt-get update wget http://cz.archive.ubuntu.com/ubuntu/pool/universe/b/boost-defaults/libboost-all-dev_1.65.1.0ubuntu1_amd64.deb
dpkg -i libboost-all-dev_1.65.1.0ubuntu1_amd64.deb
sudo apt install libboost-all-dev
sudo apt-get -f install

STEP-2
*******
sudo iptables -I INPUT 1 -p tcp --dport  13520  -j ACCEPT [if port not open]
wget  https://github.com/nexbitproject/daemon-linux/releases/download/v1.0.0.0-g/nexbitd
mkdir .nexbit
sudo nano .nexbit/nexbit.conf  [paste config here]
sudo chmod 644 .nexbit/nexbit.conf  [look carefully in config provide for multiple instances use one for RPC user/pass]
sudo chmod u+x  nexbitd
nexbitd -d
[ Now you can see its start syncing and working ]
CMD & Param lists of daemon: 
***************************
Commands
********
#Options:
  -?                     This help message
  -conf=<file>           Specify configuration file (default: nexbit.conf)
  -pid=<file>            Specify pid file (default: nexbitd.pid)
  -datadir=<dir>         Specify data directory
  -wallet=<dir>          Specify wallet file (within data directory)
  -dbcache=<n>           Set database cache size in megabytes (default: 25)
  -dblogsize=<n>         Set database disk log size in megabytes (default: 100)
  -timeout=<n>           Specify connection timeout in milliseconds (default: 5000)
  -proxy=<ip:port>       Connect through SOCKS5 proxy
  -tor=<ip:port>         Use proxy to reach tor hidden services (default: same as -proxy)
  -dns                   Allow DNS lookups for -addnode, -seednode and -connect
  -port=<port>           Listen for connections on <port> (default: 13520 or testnet: 23520)
  -maxconnections=<n>    Maintain at most <n> connections to peers (default: 125)
  -addnode=<ip>          Add a node to connect to and attempt to keep the connection open
  -connect=<ip>          Connect only to the specified node(s)
  -seednode=<ip>         Connect to a node to retrieve peer addresses, and disconnect
  -externalip=<ip>       Specify your own public address
  -onlynet=<net>         Only connect to nodes in network <net> (IPv4, IPv6 or Tor)
  -discover              Discover own IP address (default: 1 when listening and no -externalip)
  -listen                Accept connections from outside (default: 1 if no -proxy or -connect)
  -bind=<addr>           Bind to given address. Use [host]:port notation for IPv6
  -dnsseed               Query for peer addresses via DNS lookup, if low on addresses (default: 1 unless -connect)
  -forcednsseed          Always query for peer addresses via DNS lookup (default: 0)
  -synctime              Sync time with other nodes. Disable if time on your system is precise e.g. syncing with NTP (default: 1)
  -banscore=<n>          Threshold for disconnecting misbehaving peers (default: 100)
  -bantime=<n>           Number of seconds to keep misbehaving peers from reconnecting (default: 86400)
  -maxreceivebuffer=<n>  Maximum per-connection receive buffer, <n>*1000 bytes (default: 5000)
  -maxsendbuffer=<n>     Maximum per-connection send buffer, <n>*1000 bytes (default: 1000)
  -upnp                  Use UPnP to map the listening port (default: 1 when listening)
  -paytxfee=<amt>        Fee per KB to add to transactions you send
  -mininput=<amt>        When creating transactions, ignore inputs with value less than this (default: 0.01)
  -server                Accept command line and JSON-RPC commands
  -daemon                Run in the background as a daemon and accept commands
  -testnet               Use the test network
  -debug=<category>      Output debugging information (default: 0, supplying <category> is optional)
                         If <category> is not supplied, output all debugging information.<category> can be: addrman, alert, db, lock, rand, rpc,
                          selectcoins, mempool, net, coinage, coinstake, creation, stakemodifier, qt.
  -logtimestamps         Prepend debug output with timestamp
  -shrinkdebugfile       Shrink debug.log file on client startup (default: 1 when no -debug)
  -printtoconsole        Send trace/debug info to console instead of debug.log file
  -regtest               Enter regression test mode, which uses a special chain in which blocks can be solved instantly. This is intended
                         for regression testing tools and app development.
  -rpcuser=<user>        Username for JSON-RPC connections
  -rpcpassword=<pw>      Password for JSON-RPC connections
  -rpcport=<port>        Listen for JSON-RPC connections on <port> (default: 13519 or testnet: 23519)
  -rpcallowip=<ip>       Allow JSON-RPC connections from specified IP address
  -rpcthreads=<n>        Set the number of threads to service RPC calls (default: 4)
  -blocknotify=<cmd>     Execute command when the best block changes (%s in cmd is replaced by block hash)
  -walletnotify=<cmd>    Execute command when a wallet transaction changes (%s in cmd is replaced by TxID)
  -confchange            Require a confirmations for change (default: 0)
  -alertnotify=<cmd>     Execute command when a relevant alert is received (%s in cmd is replaced by message)
  -upgradewallet         Upgrade wallet to latest format
  -keypool=<n>           Set key pool size to <n> (default: 100)
  -rescan                Rescan the block chain for missing wallet transactions
  -salvagewallet         Attempt to recover private keys from a corrupt wallet.dat
  -checkblocks=<n>       How many blocks to check at startup (default: 500, 0 = all)
  -checklevel=<n>        How thorough the block verification is (0-6, default: 1)
  -loadblock=<file>      Imports blocks from external blk000?.dat file
  -maxorphanblocksmib=<n> Keep at most <n> MiB of unconnectable blocks in memory (default: 40)
  -datacarriersize       Maximum size of data in data carrier transactions we relay and mine (default: 15000)

#Block creation options:
  -blockminsize=<n>      Set minimum block size in bytes (default: 0)
  -blockmaxsize=<n>      Set maximum block size in bytes (default: 250000)

SSL options: (see the Bitcoin Wiki for SSL setup instructions)
  -rpcssl                                  Use OpenSSL (https) for JSON-RPC connections
  -rpcsslcertificatechainfile=<file.cert>  Server certificate file (default: server.cert)
  -rpcsslprivatekeyfile=<file.pem>         Server private key (default: server.pem)
  -rpcsslciphers=<ciphers>                 Acceptable ciphers (default: TLSv1.2+HIGH:TLSv1+HIGH:!SSLv2:!aNULL:!eNULL:!3DES:@STRENGTH)

UI options:
  -lang=<lang>           Set language, for example "de_DE" (default: system locale)
  -min                   Start minimized
  -splash                Show splash screen on startup (default: 1)

```
Config for Daemon. Use linux ubuntu 18.04.4 LTS 64 bit for bext performance.

```bash
# Conf for user2 on same server   *Upto 3/4 user /Node can be be run on a 5$ Digital Ocean VPS
#Server Config
listen=1
daemon=1
server=1
bind=[::1]:13765

#RPC Details
rpcuser=nexbitrpc<anything strong>
rpcpassword=<anything strong>
rpcallowip=<anyip>
rpcport=14676 <anyport>


#====================================================

#Server Config
listen=1
daemon=1
server=1
#RPC Details
rpcuser=nexbitrpc<anything strong>
rpcpassword=<anything strong>
rpcallowip=<anyip>
rpcport=14876 <anyport but 13519 is for nexbitd>
#========================================


#P2P Port
port=13520

#Fixed seed node
 

#Nodes to be added

seednode=connect=157.230.10.85
connect=167.71.78.206
connect=157.245.76.203
connect=167.172.239.154
connect=165.227.225.78
connect=157.230.99.176
connect=206.189.117.70
connect=167.71.140.104
connect=138.197.135.237
connect=159.65.136.159
connect=165.22.219.149
discover=1

#utilities
txindex=0
dbcache=25

printtoconsole=1
#rescan=1
dns=1
dnsseed=1
synctime=0
banscore=30
debug=mempool
logtimestamps=1
bantime=86400
forcednsseed=1


#capacity
maxconnections=100
maxmempool=50
maxreceivebuffer=2500
maxsendbuffer=500



# ZeroMQ notification options:
#zmqpubrawblock=tcp://0.0.0.0:13520
#zmqpubrawtx=tcp://0.0.0.0:13520
#zmqpubhashtx=tcp://0.0.0.0:13520
#zmqpubhashblock=tcp://0.0.0.0:13520

```
For more info mail [developer@nexbit.io]
Visit: https://nexbit.io
Telegram: https://t.me/nexbitofficial
