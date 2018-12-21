#!/usr/bin/bash

# We create release rather than debug builds.
# Debug builds are very large and  applications
# may well exceed the maximum deployment package
# size for an AWS Lambda function.
cargo build --release --target x86_64-unknown-linux-musl

# Deploy this zip
zip -j rust.zip ./target/x86_64-unknown-linux-musl/release/bootstrap
