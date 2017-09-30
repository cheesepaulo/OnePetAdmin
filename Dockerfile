FROM ruby:2.4.2-slim
# Instala nossas dependencias e limpa o cache
RUN apt-get update && apt-get install -qq -y --no-install-recommends \
    build-essential nodejs libpq-dev imagemagick libmagickwand-dev \
    && rm -rf /var/lib/apt /var/ lib/dpkg /var/lib/cache /var/lib/log
# Seta nosso path
ENV INSTALL_PATH /petadmin
# Cria nosso diretório
RUN mkdir -p $INSTALL_PATH
# Seta o nosso path como o diretório principal
WORKDIR $INSTALL_PATH
# Copia o nosso Gemfile para dentro do container
COPY Gemfile ./
# Seta o path para as Gems
ENV BUNDLE_PATH /box
# Copia nosso código para dentro do container
COPY . .
