#!/bin/zsh

rm -v resume.pdf
scp -P 37530 -i ~/.ssh/nfm ./resume.tex nfm@mccrina.site:/home/nfm/tmp/build/
ssh -p 37530 -i ~/.ssh/nfm nfm@mccrina.site "cd /home/nfm/tmp/build ; pdflatex resume.tex resume.pdf"
scp -P 37530 -i ~/.ssh/nfm nfm@mccrina.site:/home/nfm/tmp/build/resume.pdf ./resume.pdf
ssh -p 37530 -i ~/.ssh/nfm nfm@mccrina.site "cd /home/nfm/tmp/build ; rm -r *"
