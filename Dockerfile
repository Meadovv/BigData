FROM bitnami/spark:3.4.2
USER root

RUN apt-get update -y
RUN apt-get install curl -y

# Install python packages
RUN pip install underthesea

# Install other dependencies
RUN curl https://repo1.maven.org/maven2/org/apache/spark/spark-sql-kafka-0-10_2.12/3.4.2/spark-sql-kafka-0-10_2.12-3.4.2.jar --output /opt/bitnami/spark/jars/spark-sql-kafka-0-10_2.12-3.4.2.jar
RUN curl https://repo1.maven.org/maven2/org/apache/spark/spark-streaming-kafka-0-10_2.12/3.4.2/spark-streaming-kafka-0-10_2.12-3.4.2.jar --output /opt/bitnami/spark/jars/spark-streaming-kafka-0-10_2.12-3.4.2.jar
RUN curl https://repo1.maven.org/maven2/org/apache/kafka/kafka-clients/2.8.1/kafka-clients-2.8.1.jar --output /opt/bitnami/spark/jars/kafka-clients-2.8.1.jar
RUN curl https://repo1.maven.org/maven2/org/apache/commons/commons-pool2/2.11.1/commons-pool2-2.11.1.jar --output /opt/bitnami/spark/jars/commons-pool2-2.11.1.jar
RUN curl https://repo1.maven.org/maven2/org/apache/spark/spark-token-provider-kafka-0-10_2.12/3.4.2/spark-token-provider-kafka-0-10_2.12-3.4.2.jar --output /opt/bitnami/spark/jars/spark-token-provider-kafka-0-10_2.12-3.4.2.jar
RUN curl https://repo1.maven.org/maven2/org/elasticsearch/elasticsearch-spark-30_2.12/7.17.15/elasticsearch-spark-30_2.12-7.17.15.jar --output /opt/bitnami/spark/jars/elasticsearch-spark-30_2.12-7.17.15.jar
RUN curl https://repo1.maven.org/maven2/commons-httpclient/commons-httpclient/3.1/commons-httpclient-3.1.jar --output /opt/bitnami/spark/jars/commons-httpclient-3.1.jar
RUN curl https://repo1.maven.org/maven2/org/apache/spark/spark-catalyst_2.12/3.1.1/spark-catalyst_2.12-3.1.1.jar --output /opt/bitnami/spark/jars/spark-catalyst_2.12-3.1.1.jar
RUN curl https://repo1.maven.org/maven2/io/delta/delta-core_2.12/2.4.0/delta-core_2.12-2.4.0.jar --output /opt/bitnami/spark/jars/delta-core_2.12-2.4.0.jar
RUN curl https://repo1.maven.org/maven2/org/apache/spark/spark-catalyst_2.12/2.4.3/spark-catalyst_2.12-2.4.3.jar --output /opt/bitnami/spark/jars/spark-catalyst_2.12-2.4.3.jar
RUN curl https://repo1.maven.org/maven2/org/apache/spark/spark-catalyst_2.12/2.4.0/spark-catalyst_2.12-2.4.0.jar --output /opt/bitnami/spark/jars/spark-catalyst_2.12-2.4.3.jar
RUN curl https://repo1.maven.org/maven2/org/apache/spark/spark-catalyst_2.12/2.4.0/spark-catalyst_2.11-2.0.0.jar --output /opt/bitnami/spark/jars/spark-catalyst_2.11-2.0.0.jar