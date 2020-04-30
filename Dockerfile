FROM sumankhanal/raku-notebook:latest
LABEL maintainer="Dr Suman Khanal <suman81765@gmail.com>"

#Enabling Binder..................................
ENV NB_USER suman
ENV HOME /home/${NB_USER}

#..............................................


ENV PATH=$PATH:/usr/share/perl6/site/bin
RUN cd ${HOME} && git clone https://github.com/tigerpaws2/raku-tidbits.git \
    && zef install SVG::Plot --force-test


EXPOSE 8888

CMD ["jupyter", "lab", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
