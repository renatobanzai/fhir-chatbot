ARG IMAGE=intersystemsdc/irishealth-community
FROM $IMAGE

USER root

WORKDIR /opt/irisapp
RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/irisapp
USER ${ISC_PACKAGE_MGRUSER}

COPY  src src
COPY data/fhir fhirdata
COPY iris.script /tmp/iris.script
COPY fhirUI /usr/irissys/csp/user/fhirUI
COPY share /usr/irissys/csp/user/fhirUI/ChatBot

# run iris and initial 
RUN iris start IRIS \
	&& iris session IRIS < /tmp/iris.script
