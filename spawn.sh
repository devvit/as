#!/bin/bash

points=(
'1 -2631.7194824219  -4769.1123046875  26.165254592896'
)

for i in {70800..71999}; do
  node cmd.js ".npcbot spawnto $i 0 -1209.2574462891 1388.7039794922 54.492282867432 0"
done