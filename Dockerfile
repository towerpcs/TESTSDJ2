FROM windev/webdev-base:FR270040f

COPY Mon_Projet30.ZIP ${WEBDEVConfiguration}comptes/ftp_webdev/

RUN set -ex \
	&& cd ${WEBDEVBinaries} \
	&& ${WEBDEVBinaries}WDInstalle /DOCKER/INSTALLEGO/Mon_Projet30

# Création de la persistance
VOLUME ${WEBDEVConfiguration}comptes/Donnees/Mon_Projet30/