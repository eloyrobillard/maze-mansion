#!/bin/bash

echo "==========================================================="
echo "BUILDING TO WASM"
echo "==========================================================="

set -e # If any command fails, script exits immediately

THIS_SCRIPTS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $THIS_SCRIPTS_DIR/..

wasmFilename="rs"

existingWasmFile="public/$wasmFilename.wasm"
[ -e $existingWasmFile ] && rm $existingWasmFile

cd wasm

# Compile to wasm
cargo build --target wasm32-unknown-unknown --release

# Move to dist
mv "target/wasm32-unknown-unknown/release/$wasmFilename.wasm" "../public/$wasmFilename"