#!/bin/bash

set -e

HYPERDEX_VERSION=1.7.1

pushd .
cd deps
tar zxf hyperdex-${HYPERDEX_VERSION}.tar.gz
cd hyperdex-${HYPERDEX_VERSION}/bindings/node.js
node-gyp configure build
cp build/Release/hyperdex-client.node ../../..
popd
