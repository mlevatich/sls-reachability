## SLS-Reachability Problem

Translates multiset problems given in smt-lib format to LIA* and solves them using over and under-approximations of a semi-linear set representation of the LIA* formula to efficiently reduce the problem to LIA satisfiability. See ```benchmarks/bapa``` for multiset problems.

Also solves LIA* formulas of the form A ^ B*, given the formulas A and B in smt-lib format. See ```benchmarks/sat``` and ```benchmarks/sat``` for examples.

## Dependencies

```
python3
pip
z3     # pip install z3-solver
```

## How to Run

Use ```python3 lia_star_solver.py -h``` for instructions on how to run the program.

Use the following to run the bapa/mapa benchmarks with a timeout of 50 seconds.
```
cd benchmarks
python3 run_bapa.py lia 50
```
