---
title: 'Gala: A Python package for galactic dynamics'
tags:
  - Julia
  - Functional Programming
  - Optics
authors:
  - name: Jan Weidner
    orcid: 0000-0002-0980-8239
    affiliation: 1
affiliations:
 - name: PTW-Dosimetry
   index: 1
date: 13 September 2020
bibliography: paper.bib
---

# Summary
We discuss the problem of updating immutable objects. The solutions presented are implemented in the @SetfieldRepo package.

# Details

In Julia, some objects are *mutable* (`Array`, `mutable struct`, `...`), while others are *immutable* (`Tuple`, `struct`, `...`).
Neither is strictly better than the other in every situation. However, *immutability* usually leads to code that is easier to reason about, for both humans and compilers.
And therefore less buggy and more performant programs.
One convenience with mutability is, that it makes updating objects very simple:

`spaceship.captain.name = "Julia"`

The analogous operation in the immutable case is to create a copy of `spaceship`,
with just the captains name changed to "Julia". This operation is sometimtes called functional update.
Just think for a moment, how would you do achieve this?
It is a serious problem and there are various approaches, for instance https://github.com/JuliaLang/julia/pull/21912.

The [`Setfield.jl`](https://github.com/jw3126/Setfield.jl) provides a solution to this problem. Namely it allows the user
to specify a functional update using the same syntax as in a mutable setting. The only syntactic difference is the `@set` macro in front:

`@set spaceship.captain.name = "Julia"`

And voila, this returns an updated copy. The implementation is based on the lens formalism.
Lenses are a powerful tool for manipulating immutable data, popular in the haskell community.

# Details

For a quick reference, the following citation commands can be used:
- `@author:2001`  ->  "Author et al. (2001)"
- `[@author:2001]` -> "(Author et al., 2001)"
- `[@author1:2001; @author2:2001]` -> "(Author1 et al., 2001; Author2 et al., 2002)"

# Acknowledgements

We acknowledge various small contributions in form of issues and pull requests, by various
authors. Details can be extracted from the [`github repository`](https://github.com/jw3126/Setfield.jl).

# References
