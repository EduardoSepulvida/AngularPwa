#!/bin/bash

if [ -z "$1" ] 
then
   echo "Uso:"
   echo "./publ.sh \"Mensagem de commit\""
   echo "(A mensagem de commit deve ser informada entre aspas)"
else
   ng build --prod --base-href /AngularPwa/AngularPwa/  
   git add dist
   git commit -m %1
   git subtree push --prefix=dist origin gh-pages
   chrome "https://eduardosepulvida.github.io/AngularPwa/AngularPwa"
fi