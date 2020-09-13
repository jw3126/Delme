---
title: 'Gala: A Python package for galactic dynamics'
tags:
  - Julia
  - Optics
  - Immutable
authors:
  - name: Jan Weidner
    orcid: 0000-0002-0980-8239
    affiliation: "1, 2" # (Multiple affiliations must be quoted)
  - name: Author Without ORCID
    affiliation: 2
  - name: Author with no affiliation
    affiliation: 3
affiliations:
 - name: Lyman Spitzer, Jr. Fellow, Princeton University
   index: 1
 - name: Institution Name
   index: 2
 - name: Independent Researcher
   index: 3
date: 13 September 2020
bibliography: paper.bib

# Optional fields if submitting to a AAS journal too, see this blog post:
# https://blog.joss.theoj.org/2018/12/a-new-collaboration-with-aas-publishing
aas-doi: 10.3847/xxxxx <- update this with the DOI from AAS once you know it.
aas-journal: Astrophysical Journal <- The name of the AAS journal.
---

# Summary
We discuss the problem of updating immutable objects. The solutions presented are implemented in the [`Setfield.jl`](https://github.com/jw3126/Setfield.jl) package.

# Introduction

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

And voila, this returns an updated copy.

# Details

For a quick reference, the following citation commands can be used:
- `@author:2001`  ->  "Author et al. (2001)"
- `[@author:2001]` -> "(Author et al., 2001)"
- `[@author1:2001; @author2:2001]` -> "(Author1 et al., 2001; Author2 et al., 2002)"

# Acknowledgements

We acknowledge contributions from Brigitta Sipocz, Syrtis Major, and Semyeong
Oh, and support from Kathryn Johnston during the genesis of this project.

# References
