FROM elixir:1.8-otp-22

WORKDIR /
COPY /* ./


RUN mix local.hex
RUN mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez
RUN mix deps.get

CMD mix deps.get && mix phx.server