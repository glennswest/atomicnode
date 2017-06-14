FROM registry.access.redhat.com/rhel7-atomic
RUN \
#curl --silent --location https://rpm.nodesource.com/setup_6.x | bash - ;\
#microdnf --enablerepo rhel-7-server-rpms install python ;\
#microdnf --enablerepo nodesource install nodejs ;\
curl --silent -O https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm ;\
rpm -i epel-release-latest-7.noarch.rpm ;\
microdnf --enablerepo rhel-7-server-rpms install libicu ;\
microdnf --enablerepo rhel-7-server-extras-rpms --enablerepo rhel-7-server-optional-rpms --enablerepo epel install nodejs ;\
#microdnf remove python ;\
microdnf clean all


