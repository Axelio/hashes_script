#!/bin/sh

SHA1_DIRECTORY=sha1
mkdir -p $SHA1_DIRECTORY

EXITO() {
    printf "\033[1;32m${1}\033[0m\n"
}

for archivo in `ls -p | grep -v 'html' | grep -v 'sh' | grep -v '/'`;
    do sha1sum $archivo > $SHA1_DIRECTORY/$archivo.sha1;
    done

EXITO "Culminada la generación de hashes exitosamente en $SHA1_DIRECTORY"
