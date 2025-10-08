# Fast confidence bounds for the false discovery proportion over a path of hypotheses

[![build and publish](https://github.com/computorg/published-202510-durand-fast/actions/workflows/build.yml/badge.svg)](https://github.com/computorg/published-202510-durand-fast/actions/workflows/build.yml)
[![DOI:10.57750/1gr8-bk61](https://img.shields.io/badge/DOI-10.57750/efbs--ef14-034E79.svg)](https://doi.org/10.57750/efbs-ef14)
[![reviews](https://img.shields.io/badge/review-report-blue)](https://github.com/computorg/published-202510-durand-fast/issues/15)
[![SWH](https://archive.softwareheritage.org/badge/origin/https://github.com/computorg/published-202510-durand-fast/)](https://archive.softwareheritage.org/browse/origin/?origin_url=https://github.com/computorg/published-202412-ambroise-spectral)
[![Creative Commons License](https://i.creativecommons.org/l/by/4.0/80x15.png)](http://creativecommons.org/licenses/by/4.0/)


Author:

-  Guillermo Durand - [Université Paris-Saclay](https://www.universite-paris-saclay.fr/), [CNRS]
(https://www.cnrs.fr), [Inria](https://team.inria.fr/celeste/), [Laboratoire de Mathématique
s d'Orsay](https://www.imo.universite-paris-saclay.fr), 91405, Orsay, France

Abstract

This paper presents a new algorithm (and an additional trick)
that allows to compute fastly
an entire curve of post hoc bounds for the False Discovery Proportion when the
underlying bound $V^*_{\mathfrak{R}}$ construction is based on a reference
family $\mathfrak{R}$ with a forest structure à la @MR4178188.
By an entire curve, we mean the values
$V^*_{\mathfrak{R}}(S_1),\dotsc,V^*_{\mathfrak{R}}(S_m)$ computed on a path
of increasing selection sets $S_1\subsetneq\dotsb\subsetneq S_m$, $|S_t|=t$.
The new algorithm leverages the fact that going from $S_t$ to $S_{t+1}$
is done by adding only one hypothesis. Compared to a more naive approach,
the new algorithm has a complexity in $O(|\mathcal K|m)$ instead of
$O(|\mathcal K|m^2)$, where $|\mathcal K|$ is the cardinality of the family.

