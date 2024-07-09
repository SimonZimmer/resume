FROM debian:11

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
  apt-get install --yes --no-install-recommends \
  git \
  ca-certificates \
  inotify-tools \
  lmodern \
  make \
  texlive-fonts-recommended \
  texlive-latex-recommended \
  texlive-lang-english \
  texlive-lang-portuguese \
  texlive-fonts-extra \
  texlive-xetex \
  fonts-font-awesome && \
  apt-get autoclean && apt-get --purge --yes autoremove && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Update font cache
RUN fc-cache -f -v

WORKDIR /latex
