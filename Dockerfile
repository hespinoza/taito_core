# shared/taito_core/Dockerfile
FROM ruby:3.3.8-slim

WORKDIR /app

# Instalar dependencias del sistema
RUN apt-get update -qq && apt-get install -y --no-install-recommends \
    build-essential git curl libyaml-dev && \
    rm -rf /var/lib/apt/lists/*

# Copiar los archivos de la gema
COPY . .

# Instalar dependencias de la gema
RUN bundle install

# Comando por defecto (puede cambiarse por "bundle exec rspec" para tests)
CMD ["irb"]
