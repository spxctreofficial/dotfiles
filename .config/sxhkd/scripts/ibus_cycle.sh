#!/bin/sh

ibus engine

if [ $(ibus engine) = 'xkb:us::eng' ]; then
    ibus engine rime
else
    ibus engine xkb:us::eng
fi
