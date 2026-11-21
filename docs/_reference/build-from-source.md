---
title: Build from Source
description: Build native-sql-database-client-windows with Cargo on Linux, macOS or Windows.
nav_order: 3
---

## What you need

- [Rust](https://rustup.rs), installed with rustup. The toolchain is
  pinned in `rust-toolchain.toml`, and rustup installs it on the first
  build.
- On Linux, the Wayland, xkbcommon and GL development headers. On Ubuntu
  and Debian:

  ```sh
  sudo apt-get install -y libxkbcommon-dev libwayland-dev libgl1-mesa-dev
  ```

## Build

```sh
git clone https://github.com/igor-alexandrov/native-sql-database-client-windows.git
cd native-sql-database-client-windows
cargo build --release
```

The binary is `target/release/native-sql-database-client-windows`. Run it with `--demo` for a
sample database:

```sh
./target/release/native-sql-database-client-windows --demo
```

## Contributing

The test suites, the checks a change must pass and the release process are
described in
[AGENTS.md](https://github.com/igor-alexandrov/native-sql-database-client-windows/blob/main/AGENTS.md).
Bugs and ideas are welcome in the
[issues](https://github.com/igor-alexandrov/native-sql-database-client-windows/issues).
