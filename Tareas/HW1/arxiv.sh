#!/bin/bash
#: Description : Solución al primer punto de la tarea

## Clear
clear

## Build a title 
echo "ArXiv" | figlet

## Build a long strings for printf
divider=========================================
divider=$divider$divider

## Width of divider 
totalwidth=40

## Print divider  to match 
printf "%$totalwidth.${totalwidth}s\n" "$divider"

## Print a message
printf "%s\n" "Searching the arXiv for the new stuff"
printf "http://arxiv.org/list/physics.gen-ph/new\n" 

## Print divider  to match 
printf "%$totalwidth.${totalwidth}s\n" "$divider"

## Print a message
printf "Keyword: %s\n" "$1"

## Print divider  to match 
printf "%$totalwidth.${totalwidth}s\n" "$divider"

found=$( curl http://arxiv.org/list/physics.gen-ph/new -s  | grep Title: | grep -i $1 | sed 's/.*<\/span>//g' | wc -l )
nameArticles=$( curl http://arxiv.org/list/physics.gen-ph/new -s  | grep Title: | grep -i $1 | sed 's/.*<\/span>/- /g' ) 
printf "Article found: %s\n" "$found"
printf "%s\n" "$nameArticles"

## Print divider  to match 
printf "%$totalwidth.${totalwidth}s\n" "$divider"

