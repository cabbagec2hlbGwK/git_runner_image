FROM ubuntu
SHELL ["/bin/bash", "-c"]
ENV GIT_URL "NONE"
ENV GIT_TOKEN "NONE"
WORKDIR /runner
RUN useradd -ms /bin/bash runner
RUN echo "runner:$( cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 20 | head -n 1 )" | chpasswd
RUN apt update
RUN apt install git tar curl -y
RUN mkdir actions-runner && cd actions-runner
RUN curl -o actions-runner-linux-x64-2.301.1.tar.gz -L https://github.com/actions/runner/releases/download/v2.301.1/actions-runner-linux-x64-2.301.1.tar.gz
RUN tar xzf ./actions-runner-linux-x64-2.301.1.tar.gz
RUN ./bin/installdependencies.sh
COPY config_Run.sh .
RUN chown runner ./*
RUN chown runner .
RUN chmod u+x config_Run.sh
USER runner
CMD ["./config_Run.sh"]