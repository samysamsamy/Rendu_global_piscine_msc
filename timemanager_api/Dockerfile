FROM elixir:latest

WORKDIR /app

COPY ./ .

RUN apt-get update

RUN apt-get install -y postgresql-client

RUN apt-get install -y inotify-tools

RUN apt-get install -y nodejs

RUN curl -L https://npmjs.org/install.sh | sh

RUN mix local.hex --force

RUN mix local.rebar --force

RUN mix archive.install hex phx_new 1.5.3 --force

RUN mix deps.get

RUN chmod -R 777 ./entrypoint.sh

EXPOSE 4000

CMD ./entrypoint.sh