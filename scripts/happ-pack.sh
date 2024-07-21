#!/bin/bash
# Compile the WASM
cargo build --release --target-dir target --target wasm32-unknown-unknown --workspace

# Pack DNAs
hc dna pack --output=happ/workdir/profiles.dna happ/workdir/dna/profiles
hc dna pack --output=happ/workdir/projects.dna happ/workdir/dna/projects

# Pack hApp
hc app pack --output=happ/workdir/acorn.happ happ/workdir