FROM debian:latest
WORKDIR /app
# COPY . .
RUN apt update 
RUN apt -y upgrade
RUN apt install -y make
# RUN apt install -y texlive-full biber texlive-fonts-recommended texlive-fonts-extra fonts-freefont-ttf
RUN apt install -y texlive biber texlive-latex-extra texlive-fonts-extra texlive-fonts-recommended


