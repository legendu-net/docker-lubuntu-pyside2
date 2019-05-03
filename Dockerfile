FROM dclong/lubuntu-qt5

RUN apt-get update -y \
    && apt-get install -y \
        python3 python3-pip python3-venv \
        python3-all-dev python3-setuptools build-essential python3-wheel \
    && pip3 install --upgrade pip \
    && apt-get autoremove \
    && apt-get autoclean 

RUN pip3 install pyside2 pyqt5

ENTRYPOINT ["/scripts/sys/init.sh"]
