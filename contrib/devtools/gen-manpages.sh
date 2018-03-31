#!/bin/bash

TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
BUILDDIR=${BUILDDIR:-$TOPDIR}

BINDIR=${BINDIR:-$BUILDDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

MIGUELKOIND=${MIGUELKOIND:-$BINDIR/miguelkoind}
MIGUELKOINCLI=${MIGUELKOINCLI:-$BINDIR/miguelkoin-cli}
MIGUELKOINTX=${MIGUELKOINTX:-$BINDIR/miguelkoin-tx}
MIGUELKOINQT=${MIGUELKOINQT:-$BINDIR/qt/miguelkoin-qt}

[ ! -x $MIGUELKOIND ] && echo "$MIGUELKOIND not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
MKNVER=($($MIGUELKOINCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for miguelkoind if --version-string is not set,
# but has different outcomes for miguelkoin-qt and miguelkoin-cli.
echo "[COPYRIGHT]" > footer.h2m
$MIGUELKOIND --version | sed -n '1!p' >> footer.h2m

for cmd in $MIGUELKOIND $MIGUELKOINCLI $MIGUELKOINTX $MIGUELKOINQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${MKNVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${MKNVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
