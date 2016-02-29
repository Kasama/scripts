#!/bin/zsh
upower -d|awk '$1 == "percentage:" { power=substr($2, 0, index($2, "%") - 1); if (power < 30) { color="RED"; } else if (power < 80) { color="ORANGE"; } else { color="GREEN";} printf "%d: %s\n", power, color; }'
