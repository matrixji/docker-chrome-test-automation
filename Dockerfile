FROM fedora:latest

RUN dnf -y install fedora-workstation-repositories dnf-plugin-config-manager && \
    dnf -y config-manager --set-enabled google-chrome && \
    dnf -y install \
        google-chrome \
        chromedriver \
        python3 \
        python3-devel \
        python3-pip \
        && \
    dnf clean all

RUN pip3 install --no-cache-dir \
    robotframework \
    robotframework-selenium2library
