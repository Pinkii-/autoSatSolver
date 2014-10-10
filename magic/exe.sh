cd random3SAT/

#echo "  ARCHIVO                     PICOSAT           MASHIT   Decisiones Propagaciones/s"

for f in *
do
	echo "$f" "$(../../shitSatSolver < $f)"
done


