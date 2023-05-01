#!/usr/bin/env bash
npm run download
let n=$1*2+1
ganache-cli -a $n -i 1337 --acctKeys private_keys.json
