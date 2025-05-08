# KZ Außenlager Görlitz und Rennersdorf

Dieses Repositorium enthält die Quelldateien des Buches im LaTeX-Format (main.tex, ./chapter), alle verwendeten Bildquellen (./images), Quelldateien von erstellten Karten (./data/maps) und eine Tabelle mit Namen von ehemaligen Insassen der KZ-Außenlager (./data/opfer.csv). Außerdem ist der Code für Darstellung des Buches als Webseite (./web) hier zu finden. 


## Compilation des Buches und der Webseite

**Prerequesits**
- [latex]()
- [pandoc]
- [imagemagick]()
- [quarto](https://quarto.org/docs/websites/)

### Website
1. Create markdown from LaTeX sources: `bash create-website.sh`
2. Create website from markdown: [quarto](https://quarto.org/docs/websites/): `quarto render`


**Step-by-step**

1. Convert LaTeX to markdown using [pandoc](https://pandoc.org/MANUAL.html): 
`pandoc main.tex --lua-filter=lua-filter-myfigure.lua --from latex --to markdown -o web/main.qmd`
--default-image-extension=EXTENSION
--shift-heading-level-by=NUMBER 
--extract-media=DIR
--dpi=NUMBER
--toc[=true|false], --table-of-contents[=true|false]
--toc-depth=NUMBER
--strip-comments[=true|false]
--resource-path=SEARCHPATH
--figure-caption-position=above|below
--table-caption-position=above|below
2. Preview and test the site: `quarto preview`
3. Create website from markdown: `quarto render`

