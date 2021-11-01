FROM elixir:latest
COPY ./ /app
WORKDIR /app/

RUN apt-get update
RUN apt-get install -y postgresql-client
RUN apt-get install -y inotify-tools
RUN apt-get install -y nodejs
RUN apt-get upgrade -y
RUN curl -L https://npmjs.org/install.sh | sh

RUN mix local.hex --force
RUN mix archive.install hex phx_new 1.5.3 --force
RUN mix deps.get

RUN npm install

CMD ./entrypoints.sh