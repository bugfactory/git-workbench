FROM centos
MAINTAINER Luciano A. Borguetti Faustino <lucianoborguetti@gmail.com>

# Installing packages
RUN yum -q makecache && \
    # Update base images. && \
    yum -y distribution-synchronization && \
    # Installing . git && \
    yum -y install git && \
    # Cleaning yum. && \
    yum clean all

# Changing workdir for /code
WORKDIR /code
