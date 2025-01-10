export NAMENODE_URL="http://localhost:9870";
export HDFS_USER="meadow";
export BOOSTRAP_SERVERS="172.24.181.57:9192,172.24.181.57:9292,172.24.181.57:9392";
export CONSUMER_GROUP_ID="house_data";
export SUBSCRIBE_LIST="bds,guland";
export POLL_TIMEOUT=0.2;

python3.11 hadoop-consumer.py