# AWX with metrics-utility
FROM quay.io/ansible/awx

USER root

RUN /var/lib/awx/venv/awx/bin/pip3 install --upgrade pip && \
    /var/lib/awx/venv/awx/bin/pip3 install git+https://github.com/ansible/metrics-utility.git && \
    ln -s /var/lib/awx/venv/awx/bin/metrics-utility /usr/local/bin/

USER 1000