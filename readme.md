## SLS-Reachability Problem

Interprets BAPA benchmarks in smt-lib format as either set or multiset problems, translates them to to LIA*, and solves them using over and under-approximations of a semi-linear set representation of the LIA* formula to efficiently reduce the problem to LIA satisfiability.

## Dependencies

```
# if you do not already have python3, install python3 for your machine via these instructions:
https://realpython.com/installing-python/

# once python3 and pip are installed, install the z3 package
pip install z3-solver
```

## How to Run

For instructions on how to run the program, use ```python3 lia_star_solver.py -h```

For instructions on how to run the benchmarks, use ```cd benchmarks; python3 run_bapa.py -h```

To produce the evaluation from the paper, we ran the benchmarks with the following options:

BAPA evaluation: ```python3 run_bapa.py bapa_output 50```

MAPA evaluation: ```python3 run_bapa.py mapa_output 50 --mapa```

Unfolding evaluation: ```python3 run_bapa.py unfold_output 50 --mapa --unfold=5```

No-interpolation evaluation: ```python3 run_bapa.py no_interp_output 50 --mapa --no-interp```

We collected the numbers for our tables by parsing the resulting csv files.
