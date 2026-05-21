#!/bin/bash


if ! dpkg -l | grep -q "libssl"; then
    echo "libssl library not found. Installing..."
    sudo apt update
    sudo apt install -y libssl3
fi

if ! dpkg -l | grep -q "libcurl4"; then
    echo "libcurl4 library not found. Installing..."
    sudo apt install -y libcurl4
fi

./walletgen

