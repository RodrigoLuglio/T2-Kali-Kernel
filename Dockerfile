# Container image that runs your code
FROM kalilinux/kali-rolling

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
COPY patches/* /patches/
COPY patch_driver.sh /
COPY build.sh /  

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]