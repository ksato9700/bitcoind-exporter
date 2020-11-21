# Bitcoind exporter for Prometheus

[![js-standard-style](https://cdn.rawgit.com/feross/standard/master/badge.svg)](https://github.com/feross/standard)

Metrics page example:

```
# HELP bitcoind_version Client version
# TYPE bitcoind_version gauge
bitcoind_version{value="/Satoshi:0.20.1/"} 1

# HELP bitcoind_blockchain_latest Latest block information
# TYPE bitcoind_blockchain_latest gauge
bitcoind_blockchain_latest{hash="0000000000000051ddef0b7b3306b2849890f8b3829786499816962f8f110187"} 1893761

# HELP bitcoind_blockchain_sync Blockchain sync info
# TYPE bitcoind_blockchain_sync gauge
bitcoind_blockchain_sync{type="blocks"} 1893761
bitcoind_blockchain_sync{type="headers"} 1893761
bitcoind_blockchain_sync{type="progress"} 1
bitcoind_blockchain_sync{type="current"} 1893761
bitcoind_blockchain_sync{type="highest"} 1893761

# HELP bitcoind_blockchain_size_bytes Blockchain size on disk
# TYPE bitcoind_blockchain_size_bytes gauge
bitcoind_blockchain_size_bytes 28719159096

# HELP bitcoind_mempool_size Mempool information
# TYPE bitcoind_mempool_size gauge
bitcoind_mempool_size{type="size"} 4
bitcoind_mempool_size{type="bytes"} 664

# HELP bitcoind_fee Approximate fee per kilobyte by estimatesmartfee method
# TYPE bitcoind_fee gauge
bitcoind_fee{target="1",mode="CONSERVATIVE"} 0.00001
bitcoind_fee{target="1",mode="ECONOMICAL"} 0.00001
bitcoind_fee{target="2",mode="CONSERVATIVE"} 0.00001
bitcoind_fee{target="2",mode="ECONOMICAL"} 0.00001
bitcoind_fee{target="3",mode="CONSERVATIVE"} 0.00001
bitcoind_fee{target="3",mode="ECONOMICAL"} 0.00001

# HELP bitcoind_peers Connected peers
# TYPE bitcoind_peers gauge
bitcoind_peers{version="all"} 45
bitcoind_peers{version="/Satoshi:0.20.1/"} 11
bitcoind_peers{version="/Satoshi:0.18.0(bitcore)/"} 1
bitcoind_peers{version="/Satoshi:0.19.1/"} 3
bitcoind_peers{version="/Satoshi:0.20.0/"} 5
bitcoind_peers{version="/Satoshi:0.19.0.1/"} 2
bitcoind_peers{version="/Satoshi:0.17.1/"} 3
bitcoind_peers{version="Akka"} 6
bitcoind_peers{version="/Satoshi:0.18.0/"} 4
bitcoind_peers{version="/Satoshi:0.18.1(Omni:0.8.1)/"} 1
bitcoind_peers{version="/Satoshi:0.13.0/"} 1
bitcoind_peers{version="/bitcoinj:0.15.3/"} 2
bitcoind_peers{version="/Satoshi:0.16.3/"} 3
bitcoind_peers{version="/Satoshi:0.20.99/"} 1
bitcoind_peers{version="/Satoshi:0.17.0/"} 1
bitcoind_peers{version="/btcwire:0.5.0/bitmarkd-payment-lightclient:0.1.0/"} 1
```

## Usage:

```
docker run \
  -p 8000:8000 \
  -e BITCOIND_EXPORTER_LISTEN=0.0.0.0:8000 \
  -e BITCOIND_EXPORTER_NODE=http://bitcoinrpc:password@bitcoind:8332/ \
  -e BITCOIND_EXPORTER_TYPE=bitcoin
  quay.io/exodusmovement/bitcoind-exporter
```

### Support

- [x] bitcoin
- [x] bitcoincash
- [x] bitcoingold
- [x] dash
- [x] digibyte
- [x] dogecoin
- [x] litecoin
- [x] monacoin
- [x] qtum
- [x] vertcoin
- [x] zcash

### LICENSE

MIT
