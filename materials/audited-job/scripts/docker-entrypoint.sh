#!/bin/bash

# SSSD start 
sssd 


if [ "$1" = "rstudio" ]
then
    

#    chmod 0600 /etc/rstudio/launcher.pem

    configdir="/etc/rstudio"

    openssl genpkey -algorithm RSA \
            -out $configdir/launcher.pem \
            -pkeyopt rsa_keygen_bits:2048 && \
    chown rstudio-server:rstudio-server \
            $configdir/launcher.pem && \
    chmod 0600 $configdir/launcher.pem

    openssl rsa -in $configdir/launcher.pem \
            -pubout > $configdir/launcher.pub && \
    chown rstudio-server:rstudio-server \
            $configdir/launcher.pub

    echo "---> Activating the RSW License ..."
    /usr/lib/rstudio-server/bin/license-manager activate $RSP_LICENSE

    /usr/bin/rstudio-launcher start
    sleep 4
    /usr/sbin/rstudio-server start
    sleep 4 

    while true 
    do
        sleep 20
    done

fi


exec "$@"
