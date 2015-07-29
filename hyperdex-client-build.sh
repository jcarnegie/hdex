#!/bin/bash

set -e

HYPERDEX_VERSION=1.8.1

cd deps
tar zxf hyperdex-${HYPERDEX_VERSION}.tar.gz
cd hyperdex-${HYPERDEX_VERSION}/bindings/node.js
node-gyp configure build
cp build/Release/hyperdex-client.node ../../../..