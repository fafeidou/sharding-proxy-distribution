#
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

FROM openjdk:8u191-jdk-alpine3.9
MAINTAINER ShardingSphere "dev@shardingsphere.apache.org"
LABEL name="docker-sharding-proxy" version="1.0" author="476688386@qq.com"

ARG APP_NAME
ENV LOCAL_PATH /opt/sharding-proxy

ADD target/sharding-proxy-distribution-4.0.0-sharding-proxy.tar.gz /opt
#RUN mv /opt/sharding-proxy-bin ${LOCAL_PATH}

RUN ls /opt

RUN ls /opt/sharding-proxy/bin/

RUN mkdir -p ${LOCAL_PATH}/ext-lib
RUN chmod 777 /opt/sharding-proxy/bin/start.sh

RUN /opt/sharding-proxy/bin/start.sh

#${PORT} && tail -f ${LOCAL_PATH}/logs/stdout.log
