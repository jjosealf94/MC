#!/bin/bash 
cd ~/Documentos/c-examples/src/
for file in $(ls)
do 
echo "#$file" >> punto1.md 
echo "\`\`\`">> punto1.md 
less "$file" >> punto1.md 
echo "\`\`\`">>punto1.md 
done

mv punto1.md ~/Documentos/MC/Talleres/Taller3/
