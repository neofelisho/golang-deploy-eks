FROM golang:1.14-stretch
RUN apt update && apt install -y --no-install-recommends \
  curl \
  unzip \
  wget \
  tar 
WORKDIR /temp
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install
RUN rm -rf /temp
RUN wget -q https://storage.googleapis.com/kubernetes-release/release/v1.17.3/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl 
RUN chmod +x /usr/local/bin/kubectl 
RUN wget -c https://github.com/golang-migrate/migrate/releases/download/v4.9.1/migrate.linux-amd64.tar.gz -O - | tar -xz
RUN mv ./migrate.linux-amd64 /bin/migrate