export BIBINPUTS=":.:/home/vruiz/bibs/:"
make clean
make index.pdf
rm -f citations
grep citation ~/the_sound/index.aux >> citations
grep citation ~/The_Human_Auditory_System/index.aux >> citations
grep citation ~/Human_Sound_Perception/index.aux >> citations
cat citations >> index.aux
bibtex index
make index.html

