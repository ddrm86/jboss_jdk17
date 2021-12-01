FROM jboss/base:latest
MAINTAINER David del Río Medina <ddrm86@gmail.com>

# User root user to install software
USER root

# Install EPEL repository
RUN yum -y install epel-release

# Install necessary packages
RUN yum -y install java-17-openjdk-devel && yum clean all

# Switch back to jboss user
USER jboss

# Set the JAVA_HOME variable to make it clear where Java is located
ENV JAVA_HOME /usr/lib/jvm/java
