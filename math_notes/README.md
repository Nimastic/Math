# Consolidated Mathematics Notes

Personal mathematics reference spanning PSLE through university-level modules.

## Structure

```
main.tex
parts/
  p0_psle/          Part 0  — Arithmetical Foundations (PSLE)
  p1_emath/         Part I  — O-Level Elementary Mathematics
  p2_amath/         Part II — O-Level Additional Mathematics
  p3_h2math/        Part III — A-Level H2 Mathematics
  p4_olympiad/      Part IV  — Mathematical Olympiad Techniques
  p5_discrete/      Part V   — Discrete Structures (CS1231S)
  p6_calculus/      Part VI  — Calculus (MA1521 + MA2104)
  p7_linalg/        Part VII — Linear Algebra (MA2001 + MA2101)
  p8_analysis/      Part VIII — Mathematical Analysis (MA2108)
  p9_prob/          Part IX  — Probability and Statistics (ST2334)
  p10_stochastic/   Part X   — Stochastic Processes (MA3238 + MA4251)
  p11_rl/           Part XI  — Mathematics for RL (MA4275)
```

## Compiling

```bash
pdflatex main.tex
pdflatex main.tex   # run twice for correct ToC/references
```

Or with latexmk:

```bash
latexmk -pdf main.tex
```

## Shorthands defined in main.tex

| Command         | Output              |
|----------------|---------------------|
| `\R \N \Z \Q \C` | Blackboard bold sets |
| `\E \Prob`      | Expectation, Probability |
| `\Var \Cov`     | Variance, Covariance |
| `\rank \nullity \tr` | Matrix operators |
| `\norm{x}`      | Double-bar norm     |
| `\abs{x}`       | Absolute value bars |
| `\inner{u}{v}`  | Inner product       |
| `\eps`          | varepsilon          |
| `\dd`           | Upright d for integrals |
| `\pd{f}{x}`     | Partial derivative  |

## Theorem environments

`theorem`, `lemma`, `corollary`, `proposition`, `definition`, `example`, `remark`

Blue boxes for theorems, green for definitions, orange for examples.
