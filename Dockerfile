FROM mdouchement/devbase
MAINTAINER mdouchement

USER root
RUN apt-get install -qy gcc make
RUN cd /tmp ; \
    curl -L https://static.rust-lang.org/dist/rust-0.12.0-x86_64-unknown-linux-gnu.tar.gz -s -o - | tar -xzf -

RUN /tmp/rust-0.12.0-x86_64-unknown-linux-gnu/install.sh

USER mdouchement
CMD /bin/zsh
