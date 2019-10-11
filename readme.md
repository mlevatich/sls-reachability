## SLS-Reachability Problem

Interprets BAPA benchmarks in smt-lib format as either set or multiset problems, translates them to to LIA*, and solves them using over and under-approximations of a semi-linear set representation of the LIA* formula to efficiently reduce the problem to LIA satisfiability.

## Artifact Description

TODO

## Evaluation Instructions

1. Start the virtual machine, copying the provided zip file to the desired location. Open a terminal window and navigate to the location of the zip file.

2. Run the following:

```
unzip sls-reachability.zip
cd sls-reachability
chmod +x install.sh
```

3. Execute the setup script:

```
./install.sh
```

This script will install the z3 python package, required by our artifact.

4. All of the experimental results from the paper can be reproduced – these are the five tables in the evaluation section of the paper.

The evaluation script which runs our benchmarks and collects statistics is ```benchmarks/run_bapa.py```, so first, navigate there:

```
cd benchmarks
```

The benchmark files themselves are in the ```benchmarks/bapa/arith``` and ```benchmarks/bapa/card``` directories.

5. To produce each of the first four tables from the paper, we ran the benchmark script with the following options:

Table 1. BAPA evaluation: ```python3 run_bapa.py bapa_output 50```

Table 2. MAPA evaluation: ```python3 run_bapa.py mapa_output 50 --mapa```

Table 3. Unfolding evaluation: ```python3 run_bapa.py unfold_output 50 --mapa --unfold=5```

Table 4. No-interpolation evaluation: ```python3 run_bapa.py no_interp_output 50 --mapa --no-interp```

Each of these commands generates a csv file named with the first command-line argument to run_bapa.py (e.g. bapa_output.csv). This file contains all of the runtime statistics we collected for each benchmark.

We loaded each csv file into a spreadsheet. The columns of our tables (z3 Invocations, sat/unsat/timeout, time taken, etc) are written to the csv file individually per benchmark, so we averaged them in the spreadsheet to produce the table values.

TODO: final table

The commands were executed on a 2018 MacBook Pro running OS X Mojave 10.14.5 with a 2.9 GHz Intel Core i9 processor and 32GB of RAM. The numbers will be slightly different on the virtual machine.

The version of Python used was 3.7.4. The version of z3 used was 4.8.6.0.

6. For instructions on how to run the program directly, execute
 
```
python3 lia_star_solver.py -h
```

to see the usable options. An example execution is as follows:

```
TODO
```

