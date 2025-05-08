#
pandoc chapter/010-intro.tex --shift-heading-level-by=1 --from latex --to markdown -o web/010-intro.qmd
pandoc chapter/020-goerlitz.tex --shift-heading-level-by=1 --from latex --to markdown -o web/020-goerlitz.qmd  
latexpand chapter/030-evakuierung.tex > chapter/030-evakuierung-expanded.tex 
pandoc chapter/030-evakuierung-expanded.tex --shift-heading-level-by=1 --from latex --to markdown -o web/030-evakuierung.qmd
pandoc chapter/040-ermittlungen.tex --shift-heading-level-by=1 --from latex --to markdown -o web/040-ermittlungen.qmd
pandoc chapter/050-gedenken.tex --shift-heading-level-by=1 --from latex --to markdown -o web/050-gedenken.qmd
pandoc chapter/060-zusammenfassung.tex --shift-heading-level-by=1 --from latex --to markdown -o web/060-zusammenfassung.qmd
pandoc chapter/a070-testimonies.tex --shift-heading-level-by=1 --from latex --to markdown -o web/a070-testimonies.qmd
pandoc chapter/a080-opferlisten.tex --shift-heading-level-by=1 --from latex --to markdown -o web/a080-opferlisten.qmd
pandoc chapter/a090-verzeichnisse.tex --shift-heading-level-by=1 --from latex --to markdown -o web/a090-verzeichnisse.qmd
pandoc chapter/a100-about.tex --shift-heading-level-by=1 --from latex --to markdown -o web/a100-about.qmd