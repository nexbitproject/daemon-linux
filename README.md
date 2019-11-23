# daemon-linux
Nexbit Chain Daemon Linux
# How to Easily setup a node.
```bash
Rent a VPS minimal 5$ package is enough now
Create droplet ubuntu 18.04 64 bit
Choose Singapore/EU zone (Our most of the traffic comes from those zone)
We are using libboost 1.61.1, some linux distribution does not have that

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

If anyone face connectivity issues then can run this script:
```bash
wget https://gist.githubusercontent.com/bitbd83/8af838fb611b530b93c966f952ba64e9/raw/6ad3570a5e78f06645159ca89ee948907ba8d305/iptables.sh

Run ./iptables.sh
```
And We make easy deployment of nodes
*************************************
1. Download nexbit.conf < If any modification needs then modify >
```bash

   wget https://gist.githubusercontent.com/bitbd83/94f43f99b1a619e6ea69d78dfa69d6b0/raw/401a0d080bfc316bbbdc351eeb313dd207aaa239/nexbit.conf
   
   Open it with nano or vim then edit & save.
   ```
   
2. Download setup script
   ```bash
   
   wget https://gist.githubusercontent.com/bitbd83/c68ecb38772402ca663a599a4ee8243e/raw/d38f5dc67c060e4d4755e6a3b6b501b0afda97ee/setup.sh
   
   ```
3. Run [setup.sh] by ./setup.sh  
4. Middle of the setup process ask for config, then you just [paste] your pre-downloaded nexbit.conf file and CTRL+X
  
 
 

```
For more info mail [developer@nexbit.io]
Visit: https://nexbit.io
Telegram: https://t.me/nexbitofficial
