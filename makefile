# Variables
TITLE="Guessing Game"
DATE=$(shell date)
LINE_COUNT=$(shell wc -l < guessinggame.sh)

# Cibles
all: README.md

README.md:
	echo "# $(TITLE)" > README.md
	echo "Date et heure d'exécution : $(DATE)" >> README.md
	echo "Nombre de lignes de code dans guessinggame.sh : $(LINE_COUNT)" >> README.md
