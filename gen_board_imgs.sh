#!/bin/sh

kicad-cli pcb render --output pcb-front.png  no64/no64.kicad_pcb
kicad-cli pcb render --output pcb-back.png --side bottom no64/no64.kicad_pcb
magick convert pcb-front.png -trim +repage pcb-front.png
magick convert pcb-back.png -trim +repage pcb-back.png
# kicad-cli pcb export svg --output schematic.svg --layers F.Cu,B.Cu,F.SilkS,B.SilkS,Edge.Cuts no64/no64.kicad_pcb
