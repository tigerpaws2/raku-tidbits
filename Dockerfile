FROM tigerpaws2/raku-notebook:latest
LABEL maintainer="Mike Schmidt <mike.pk.schmidt@gmail.com>"

#Enabling Binder..................................
ENV NB_USER mike
ENV HOME /home/${NB_USER}

#..............................................


ENV PATH=$PATH:/usr/share/perl6/site/bin

COPY tidbits.ipynb LICENSE README.md ${HOME}/raku-tidbits/

USER root
RUN chown -R ${NB_USER} ${HOME}
USER ${NB_USER}
WORKDIR ${HOME}

EXPOSE 8888

CMD ["jupyter", "lab", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
