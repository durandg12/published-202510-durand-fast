# Fast confidence bounds for the false discovery proportion over a path of hypotheses

[![build and publish](https://github.com/computorg/template-computo-R/actions/workflows/build.yml/badge.svg)](https://github.com/computorg/template-computo-R/actions/workflows/build.yml)

This repo is for the [Computo](https://computo.sfds.asso.fr/) submission of a research paper titled "Fast confidence bounds for the false discovery proportion over a path of hypotheses".

You need [quarto](https://quarto.org/) installed on your computer, as well as the [Computo extension](https://github.com/computorg/computo-quarto-extension) to rend the source `.qmd` file `algo-curve.qmd`. The latter can be installed as follows:

``` bash
quarto add computorg/computo-quarto-extension
```

## Abstract

This paper presents a new algorithm (and an additional trick) that allows to compute fastly an entire curve of post hoc bounds for the False Discovery Proportion when the underlying bound $V^*_{\mathfrak{R}}$ construction is based on a reference family $\mathfrak{R}$ with a forest structure à la [Durand et al. (2020)](https://hal.science/hal-01829037). By an entire curve, we mean the values $V^*_{\mathfrak{R}}(S_1),\dotsc,V^*_{\mathfrak{R}}(S_m)$ computed on a path of increasing selection sets $S_1\subsetneq\dotsb\subsetneq S_m$, $|S_t|=t$. The new algorithm leverages the fact that going from $S_t$ to $S_{t+1}$ is done by adding only one hypothesis. Compared to a more naive approach, the new algorithm has a complexity in $O(|\mathcal K|m)$ instead of $O(|\mathcal K|m^2)$, where $|\mathcal K|$ is the cardinality of the family.
