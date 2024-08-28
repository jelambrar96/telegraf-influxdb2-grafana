#!/bin/bash

PATH_ENV_FILE="../.env"

cat $PATH_ENV_FILE

# Cargar las variables del archivo .env y exportarlas
set -a  # automáticamente exporta todas las variables
source "$PATH_ENV_FILE"
set +a

# Utilizar envsubst para reemplazar las variables en el archivo de configuracion
envsubst < ./telegraf.template.conf > ./telegraf.conf


# -----------------------------------------------------------------------------
# instalacion via apt
# -----------------------------------------------------------------------------

wget -qO- https://repos.influxdata.com/influxdb.key | sudo apt-key add -
source /etc/lsb-release
echo "deb https://repos.influxdata.com/${DISTRIB_ID,,} ${DISTRIB_CODENAME} stable" | sudo tee /etc/apt/sources.list.d/influxdb.list

sudo apt-get update
sudo apt-get install -y telegraf


# -----------------------------------------------------------------------------
# configurando telegraf
# -----------------------------------------------------------------------------

sudo service telegraf stop

sudo usermod -aG docker telegraf # permite generar metricas de docker

sudo mv /etc/telegraf/telegraf.conf /etc/telegraf/telegraf.conf.bak
sudo cp ./telegraf.conf /etc/telegraf/telegraf.conf

sudo service telegraf start

# -----------------------------------------------------------------------------
