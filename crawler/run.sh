# Crawler parameters
export min_page=2;
export max_page=100;
export province="ha-noi";
export jump_to_page=$min_page;

# Kafka parameters
export kafka_bootstrap_servers="172.24.181.57:9192,172.24.181.57:9292,172.24.181.57:9392"

# Run crawlers
scrapy crawl bds_spider \
    -a min_page=$min_page \
    -a max_page=$max_page \
    -a province=$province \
    -a jump_to_page=$jump_to_page \
    -s DOWNLOAD_DELAY=0 \
    -s KAFKA_BOOTSTRAP_SERVERS=$kafka_bootstrap_servers &

# scrapy crawl guland_spider \
#     -a province=$province \
#     -s DOWNLOAD_DELAY=0 \
#     -s KAFKA_BOOTSTRAP_SERVERS=$kafka_bootstrap_servers &

