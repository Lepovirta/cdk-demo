#!/bin/sh
set -eu

npm install

if [ "${1-:}" = "master" ]; then
    cdk deploy --require-approval=never '*'
else
    cdk diff '*'
fi

