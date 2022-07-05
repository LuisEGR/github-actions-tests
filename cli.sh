#!/bin/bash

function replaceEnv {
    set -a
    . test.env
    set +a
}

function fillTemplate {
    replaceEnv
    cat template.txt | envsubst > output.txt
    cat output.txt

    echo $GHSECRET | base64
}

fillTemplate