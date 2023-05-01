#!/usr/bin/env bash

npm run migrate:dev

# Convert the argument to an integer
p=$(echo "$1 * 100" | bc | cut -d '.' -f 1)

# Build the file names
f1="./runs/sim1-u100-g${p}-keys.json"
f2="./runs/sim1-u100-g${p}.csv"

# Create the file and copy the private keys
touch $f1
cp ./private_keys.json $f1

# Run the simulation and save the output to a file
node ./src/cli.js simulate 100 $1 --rpc HTTP://127.0.0.1:8545 > $f2