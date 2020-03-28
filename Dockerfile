FROM fedora:latest

RUN dnf -y install fedora-workstation-repositories dnf-plugin-config-manager && \
    dnf -y config-manager --set-enabled google-chrome && \
    dnf -y install \
        google-chrome-stable \
        chromedriver \
        python3 \
        python3-devel \
        python3-pip \
        wqy-bitmap-fonts \
        wqy-zenhei-fonts \
        wqy-unibit-fonts \
        wqy-microhei-fonts \
        && \
    dnf clean all

RUN pip3 install --no-cache-dir \
    robotframework \
    robotframework-selenium2library \
    selenium \
    pytest \
    pytest-html \
    pyyaml
