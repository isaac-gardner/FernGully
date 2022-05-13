# FernGully

To get up and running

```bash
apt-get update
apt-get install curl
bash <(curl -s https://raw.githubusercontent.com/isaac-gardner/FernGully/main/install.sh)
```

The connect to master and attach database

```sql
CREATE DATABASE [FernGully] ON 
( FILENAME = N'/data/FernGully.mdf' ),
( FILENAME = N'/data/FernGully.ldf' )
 FOR ATTACH
```

Then create users in SQLPAD....don't forget you will need firewall rules ;)
