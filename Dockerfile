FROM erlang:22

COPY . /usr/src/basho_bench

RUN cd /usr/src/basho_bench \
  && make \
  && cp _build/default/bin/basho_bench /opt/ \
  && rm -rf /usr/src
  
ENTRYPOINT ["/opt/basho_bench /opt/benchmark.config"]
