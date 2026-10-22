# LeanProofHelloWorld

My first formal mathematical proof project using Lean 4.

## Overview

This project explores different approaches to proving the transitivity of divisibility over natural numbers in Lean 4.

**Theorem:** For all natural numbers a, b, and c, if a divides b and b divides c, then a divides c.

## Proof approaches

Five proofs are organized into three levels:

1. Library theorem: using `Nat.dvd_trans`.
2. Tactics: using `obtain`, `use`, `calc`, `cases`, `apply`, `rw`, and `exact`.
3. Term mode: constructing proofs directly with `Exists.elim`, `Exists.intro`, `Eq.trans`, and `congrArg`.

## Project structure

- `Library.lean`: Proof using an existing theorem.
- `Tactics.lean`: Two constructive tactic-based proofs.
- `Terms.lean`: Two tactic-free proofs.
- `Examples.lean`: Concrete examples and theorem verification.

All four modules are located under `LeanProofHelloWorld/Divisibility/`.

## Requirements

- Lean 4
- Lake
- VS Code with the Lean 4 extension

No Mathlib dependency is required.

## Build

Run from the project root:

```bash
lake build
```

## Mathematical background

By definition, `a ∣ b` means that there exists a natural number `k` such that `b = a * k`.

If `b = a * k` and `c = b * m`, then:

```text
c = b * m
  = (a * k) * m
  = a * (k * m)
```

Thus, `a ∣ c`.

## Learning objectives

- Understand propositions as types and proofs as terms.
- Learn fundamental Lean 4 tactics.
- Work with existential quantifiers and equality.
- Compare tactic mode and term mode.
- Organize formal proofs into reusable modules.

## Technology

Lean 4, Lake.

## Status

Initial project — divisibility proofs.
