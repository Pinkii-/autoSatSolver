rm -r returnMio/
mkdir returnMio/
cd random3SAT/
for f in *
do
	echo "$(echo -n $f > ../returnMio/$f)" "$(echo -n ' ' >> ../returnMio/$f)" "$(../../shitSatSolver < $f >> ../returnMio/$f)" "$(more ../returnMio/$f)"
done

echo "\n\nTU SATSOLVER HA ACABADO YA :DDDDDDDDDDDDDDDDDD\n\n"

cd ../

rm -r returnPico/
mkdir returnPico/
cd random3SAT/
for f in *
do
	echo "PICOSAT $f" "$(../picosat -v < $f > ../returnPico/$f)"
done
