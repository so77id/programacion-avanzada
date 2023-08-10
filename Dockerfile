FROM gcc:latest

RUN apt-get update && apt-get install -y git zsh curl

RUN git clone https://github.com/so77id/dotfiles.git ~/.dotfiles

RUN cd /root/.dotfiles && make exec

CMD ["/bin/zsh"]
