#!/bin/sh

KK_FLAGS=
TO_VER=v1.0
PREFIX=wallet_

if [ ! -d "sql" ]; then
    mkdir sql
fi

if [ ! -d "sql/wallet" ]; then
    mkdir sql/wallet
fi

echo "" > sql/$PREFIX$TO_VER.sql

build() {
    COUNT=$1

    for I in `seq 1 $COUNT`
    do
        PIX=${PREFIX}${I}_
        kk-cli sql --prefix ${PIX} --name wallet $KK_FLAGS >> sql/$PREFIX$TO_VER.sql
        kk-cli sql --prefix ${PIX} --name order $KK_FLAGS >> sql/$PREFIX$TO_VER.sql
        kk-cli sql --prefix ${PIX} --name item --autoIncrement 1 $KK_FLAGS >> sql/$PREFIX$TO_VER.sql
    done

    kk-cli sql --ver sql/$PREFIX$TO_VER.json > /dev/null
}

build 128
