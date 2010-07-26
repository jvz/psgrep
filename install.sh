#!/usr/bin/env bash
usage()
{
    echo "Usage: $0

To change the prefix, set the PREFIX variable before running; e.g.
env PREFIX=/usr sudo $0

The default PREFIX is /usr/local
Other suggested PREFIXes include:
${HOME}/.local
/usr
/opt/psgrep"
    exit 1
}

[ $# -ge 1 ] && usage

PREFIX="${PREFIX:-/usr/local}"

# fixes issue 3: non-GNU install(1) doesn't support -D
install -d "${PREFIX}/bin"
install -d "${PREFIX}/share/man/man1"
install -m755 psgrep ${PREFIX:-/usr/local}/bin/psgrep
install -m644 psgrep.1 ${PREFIX:-/usr/local}/share/man/man1/psgrep.1
