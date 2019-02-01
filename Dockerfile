FROM ninech/netbox:latest-ldap
WORKDIR /opt/napalm-cumulus-develop
ARG CUMULUS_URL=https://github.com/napalm-automation-community/napalm-cumulus/archive/develop.tar.gz
RUN wget -q -O - "${CUMULUS_URL}" | tar xz
RUN pip install -r requirements.txt
WORKDIR /opt/netbox
RUN pip install \
# Napalm-cumulus
      napalm-cumulus
