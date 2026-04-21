#!/bin/bash
echo "Nettoyage RAZAELE BOOST..."
am kill-all
rm -rf ~/storage/downloads/*.tmp
rm -rf ~/storage/downloads/*.log
pm trim-caches 500M
termux-notification -t "Boost OK" -c "RAM libérée"
echo "Fini. Téléphone plus rapide."
