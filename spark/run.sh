#!/bin/bash

# Check the number of input arguments
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <batch|stream>"
  exit 1
fi

# Assign the argument to the MODE variable
MODE=$1

# Check the value of the MODE argument
if [ "$MODE" == "batch" ]; then
  # Run batch processing
  spark-submit --packages org.elasticsearch:elasticsearch-spark-30_2.12:7.17.15,commons-httpclient:commons-httpclient:3.1 batch_processing.py
elif [ "$MODE" == "stream" ]; then
  # Run stream processing
  spark-submit --packages org.elasticsearch:elasticsearch-spark-30_2.12:7.17.15,commons-httpclient:commons-httpclient:3.1,org.apache.spark:spark-streaming-kafka-0-10_2.12:3.4.2,org.apache.spark:spark-sql-kafka-0-10_2.12:3.4.2 stream_processing.py
else
  echo "Invalid mode: $MODE. Please specify 'batch' or 'stream'."
  exit 1
fi