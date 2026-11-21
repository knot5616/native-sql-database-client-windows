---
title: Download
description: Download native-sql-database-client-windows for macOS, Windows or Linux, with the install steps for each.
nav_order: 2
---

The newest stable version is on the
[latest release](https://github.com/igor-alexandrov/native-sql-database-client-windows/releases/latest)
page. Every version, pre-releases included, is on the
[releases page](https://github.com/igor-alexandrov/native-sql-database-client-windows/releases).
Each release lists its files with a `checksums.txt`, which you can use to
check that a download was not damaged or changed, and `checksums.txt.sig`,
its signature by the native-sql-database-client-windows release key.

## macOS

native-sql-database-client-windows needs macOS 11 or later, on Apple Silicon or Intel. With
[Homebrew](https://brew.sh):

```sh
brew install --cask igor-alexandrov/native-sql-database-client-windows/native-sql-database-client-windows
```

Or download `native-sql-database-client-windows-v<version>-macos-universal.dmg`, open it and drag
**native-sql-database-client-windows** to **Applications**.

To update, choose **native-sql-database-client-windows → Check for Updates…**, then **Download and
install**: the new version goes in when you restart. native-sql-database-client-windows updates
itself only when it runs from **Applications**, not from the disk image.
Installed with Homebrew, it updates itself the same way, and
`brew upgrade --greedy` updates it too.

To build the `native-sql-database-client-windows` program from source with Homebrew's Rust instead,
install the formula of the same name, without `--cask`:

```sh
brew install igor-alexandrov/native-sql-database-client-windows/native-sql-database-client-windows
```

It installs the program, not the app in **Applications**.
`brew upgrade native-sql-database-client-windows` updates it, and **Settings › Updates** shows that
command.

## Windows

Download and run `native-sql-database-client-windows-v<version>-x86_64-pc-windows-msvc-setup.exe`, or
the `aarch64` one on an ARM PC. The installer does not need administrator
rights.

To run native-sql-database-client-windows without an installer, download the `.zip` for your PC,
extract it and open `native-sql-database-client-windows.exe`.

**Settings › Updates** says when there is a newer version, with a link to
its release on GitHub. To update, run the new setup program, or extract
the new `.zip` in place of the old folder.

## Linux

### Arch Linux and Omarchy

The AUR packages (`native-sql-database-client-windows-bin` and `native-sql-database-client-windows`) are not published yet.
Until they are, use the AppImage to try native-sql-database-client-windows, and the release archive
to install it with an entry in the app launcher.

### Try it: the AppImage

Download `native-sql-database-client-windows-<version>-x86_64.AppImage`, or the
`aarch64` one. It is one file that runs without installing anything. Make it
executable and run it:

```sh
chmod +x native-sql-database-client-windows-<version>-x86_64.AppImage
./native-sql-database-client-windows-<version>-x86_64.AppImage
```

An AppImage needs FUSE, which most desktops have. Without it, run it with
`--appimage-extract-and-run`.

The AppImage adds nothing to the app launcher. To start native-sql-database-client-windows from
there, install it from the release archive instead.

### Build it with Homebrew

With [Homebrew](https://brew.sh) on Linux, the formula builds native-sql-database-client-windows from
the release's source:

```sh
brew install igor-alexandrov/native-sql-database-client-windows/native-sql-database-client-windows
```

It adds nothing to the app launcher. `brew upgrade native-sql-database-client-windows` updates it,
and **Settings › Updates** shows that command.

### Install it: the release archive

Download `native-sql-database-client-windows-v<version>-x86_64-unknown-linux-gnu.tar.gz`, or the
`aarch64` one. It holds the `native-sql-database-client-windows` binary, a `.desktop` file and the
icon. Unpack it and put the three where your desktop looks for them:

```sh
tar xzf native-sql-database-client-windows-v<version>-x86_64-unknown-linux-gnu.tar.gz
cd native-sql-database-client-windows-v<version>-x86_64-unknown-linux-gnu
install -Dm755 native-sql-database-client-windows ~/.local/bin/native-sql-database-client-windows
install -Dm644 packaging/linux/dev.native-sql-database-client-windows.native-sql-database-client-windows.desktop -t ~/.local/share/applications
install -Dm644 packaging/linux/dev.native-sql-database-client-windows.native-sql-database-client-windows.svg -t ~/.local/share/icons/hicolor/scalable/apps
```

With the `aarch64` archive, write `aarch64` for `x86_64` in the first two
lines.

native-sql-database-client-windows is then in the app launcher (Super+Space on Omarchy), with its
icon. The launcher entry runs `native-sql-database-client-windows` from your `PATH`, which on Omarchy
holds `~/.local/bin`. On a desktop whose launcher does not look there, put
the binary in `/usr/local/bin` instead, which needs root:

```sh
sudo install -Dm755 native-sql-database-client-windows /usr/local/bin/native-sql-database-client-windows
```

To update, install the new binary the same way: **Settings › Updates**
(`:update` in the Omarchy look) checks GitHub for a newer version, every
day unless you choose every week or only when you ask, and says when
there is one. An AppImage, or `native-sql-database-client-windows` run from the unpacked archive's
folder (beside the archive's `native-sql-database-client-windows-portable.txt`), installs it
itself with **Download and install** (`U`) once you choose to restart; a
binary copied elsewhere, as above, is installed again the same way. To
remove native-sql-database-client-windows, delete the three files.

The Linux binaries are built on Ubuntu 24.04 and need glibc 2.39 or newer
(Ubuntu 24.04, Debian 13, Fedora 40 or later). On an older system,
[build from source]({% link _reference/build-from-source.md %}).

## Next

[Open native-sql-database-client-windows and make your first connection]({% link _guide/getting-started.md %}).
