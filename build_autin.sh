curl -sSL -o atuin.tar.gz https://github.com/atuinsh/atuin/archive/refs/tags/v18.3.0.tar.gz
mkdir -p atuin
tar -xf atuin.tar.gz -C "atuin" --strip-components=1
sudo apt install protobuf-compiler gcc-aarch64-linux-gnu
rustup target add aarch64-unknown-linux-gnu
cargo build --release --target aarch64-unknown-linux-gnu
