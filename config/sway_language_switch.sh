#!/bin/bash
current=$(ibus engine)
if [ "$current" = "Unikey" ]; then
  ibus engine xkb:us::eng
else
  ibus engine Unikey
fi
