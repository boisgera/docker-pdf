FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive
ENV PYTHON python python-scipy python-matplotlib python-scipy 
ENV PANDOC pandoc pandoc-citeproc
ENV LATEX texlive texlive-extra-utils texlive-latex-extra texlive-luatex texlive-xetex


RUN apt-get update && \
    apt-get install -y $PYTHON && \
    apt-get install -y $PANDOC && \
    rm -rf /var/lib/apt/lists/* && apt-get clean && apt-get autoremove && \
    apt-get install -y $LATEX  && \
    true

