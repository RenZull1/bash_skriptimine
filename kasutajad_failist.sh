#!/bin/bash
#
# kasutajate lisamise skript
if [ $# -ne 1 ]; then
    echo "Kasutusjuhend: $0 kasutajad"
else
  kasutajad=$1
  if [ -f $kasutajad -a -r $kasutajad ]; then
    echo "fail on korras"
    for nimi in $(cat $kasutajad)
    do
      # sellega peaks faili sisu olema nähtav, kui fail on kätte saadav ja nüüd echo asemel tuleb kutsuda vajalik skript
      # echo $nimi
      sh lisa_kasutaja $nimi # sellega me laseme lisa_kasutaja skript tööle
    done
  else
    echo "probleem failiga $failinimi"
  fi
# parameetrite kontrolli lõpp
fi

