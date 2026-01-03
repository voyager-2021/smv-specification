FROM debian:13.2

RUN apt-get update && \
    apt-get install -y \
    git \
    make \
    python3 \
    python3-pip \
    python3-venv \
    ruby \
    gem \
    ghostscript \
    libxml2-utils \
    eslint \
    xsltproc \
    enscript \
    lpr \
    apsfilter \
    html2ps \
    groff \
    imagemagick \
    nano \
    vim \
    curl \
    wget \
    man-db \
    mandoc

RUN export GEM_HOME=/workspace/lib/.gems

RUN export GEM_PATH="$GEM_HOME"

RUN export PATH="$GEM_HOME/bin:$PATH"

RUN gem install bundler

RUN bundler install

WORKDIR /workspace

CMD ["/bin/bash"]
