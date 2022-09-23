FROM registry.redhat.io/rhel-minimal
USER root
COPY etc /etc
COPY usr /usr
RUN mkdir /root/.kube
RUN mkdir /data
COPY . .
COPY .kube/config /root/.kube
