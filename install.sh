#!/usr/bin/env bash
usage()
{
    echo "Usage: $0

To change the prefix, set the PREFIX variable before running; e.g.
PREFIX=/usr $0

The default PREFIX is /usr/local"
    exit 1
}

[ $# -ge 1 ] && usage

install psgrep ${PREFIX:-/usr/local}/bin/psgrep
install psgrep.1 ${PREFIX:-/usr/local}/share/man/man1/psgrep.1
