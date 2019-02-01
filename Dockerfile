FROM ninech/netbox:latest-ldap
ARG CUMULUS_URL=https://github.com/napalm-automation-community/napalm-cumulus/archive/develop.tar.gz
RUN wget -q -O - "${CUMULUS_URL}" | tar xz
WORKDIR /opt/napalm-cumulus-develop
RUN pip install -r requirements.txt
WORKDIR /opt/netbox
RUN pip install \
# Napalm-cumulus
      napalm-cumulus
