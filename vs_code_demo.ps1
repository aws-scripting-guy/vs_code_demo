## VS Code Git Demo
## Author: Jiri Pihik, pihik.jiri[at]gmail.com
## Version: 0.0.0.1


# Volitelne nastaveni jmena a emailove adresy
git config --global user.name "Moje Jmeno"
git config --global user.email "moje.jmeno@gmail.com"

# Pouzijeme Credentials Manager pro bezpecne ulozeni tokenu
git config --global credential.helper wincred

# Linux - Ubuntu
# git config --global credential.helper gnome-keyring

# Mac
# git config --global credential.helper cache

# Kontrola globalniho nastaveni
cat ~/.gitconfig

# Vytvorime kopii repozitare
git clone https://...

# Pridame zmenu v souboru ke sledovani gitem. Zmena se ulozi do "stage".
git add novy_soubor.ps1

# Zobrazime aktualni stav repozitare, sledovane soubory, akceptovane zmeny
git status

# Potvrdime zmeny v souboru a zapiseme do lokalniho repozitare
git commit -m "popis zmen v souboru"

# Odesleme prvni zmeny v souboru
git push

# Prijmeme zmeny v souboru ktere jsou novejsi nez v lokalnim repozitari (zmeny od kolegu v tymu)
git pull 

# Vraceni zmen v souboru (odstrani potvrzene zmeny ze sledovani, soubor bude ponechany)
git rm * --cached

# Git konfiguracni soubory
./.gitignore
./.gitconfig

## Uzitecne odkazy

# Visual Studio Dev Essentials
# https://www.visualstudio.com/products/free-developer-offers-vs




