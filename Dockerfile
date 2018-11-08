FROM buildkite/agent:3-ubuntu

COPY setup.sh /root/setup.sh
RUN /root/setup.sh
