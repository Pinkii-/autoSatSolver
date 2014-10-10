all: ohyeah

ohyeah: picosat parser execute parseamelotodaa 

picosat: picosat-959/configure
	./compPico.sh
	mv picosat-959/picosat .

parser: parser.java miniparser.java
	javac miniparser.java
	javac parser.java

execute: exe.sh
	sh exe.sh > salidaMiSat
	sh exePico.sh

parseamelotodaa: salidaMiSat picoParser.sh
	sh picoParser.sh
	java parser salidaMiSat salidaPicoSat > ../whereYouAt

clean:

	rm -rf satSolver resultado miSatSolver satSolverSimple satSolverSimple2 satSolverSimple3 satSolverSimple4O2 satSolverSimple4O3 picosat parser.class miniparser.class salidaMiSat salidaPicoSat tmp/ *~ returnPico/
