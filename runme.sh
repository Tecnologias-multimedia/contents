export BIBINPUTS=":.:/home/vruiz/bibs/:"
make clean
make index.pdf
rm -f citations
grep citation ~/the_sound/index.aux >> citations
grep citation ~/human_auditory_system/index.aux >> citations
grep citation ~/human_sound_perception/index.aux >> citations
grep citation ~/the_light/index.aux >> citations
cat citations >> index.aux
bibtex index
make index.html

