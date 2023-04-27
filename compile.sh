#!/bin/sh 
baseDir=`pwd`
rm -R /tmp/compileDir
rm -R ./png
rm -R ./pdf
mkdir /tmp/compileDir
mkdir "$baseDir/png"
mkdir "$baseDir/pdf"
cp *.tex /tmp/compileDir
cp *.sty /tmp/compileDir
#On copie aussi les répertoires contenant les images, les annexes et les autres fichiers nécessaires à la compilation (code sources,...) 


#On en profite également pour faire un peu de nettoyage
rm *.out *.aux *.log *.synctex.gz *.bbl *.blg *.pdf *.toc *.snm *.nav *.fdb_latexmk *.fls *.xdv *.png *.jpeg *.jpg
cd /tmp/compileDir 
 
#Compilation proprement dites
latexmk -xelatex -shell-escape
 
#On place les rapport compilés dans le répertoire de base
mv *.pdf "$baseDir/pdf"
mv *.png "$baseDir/png"




