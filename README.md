# daemon-linux
Nexbit Chain Daemon Linux

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


