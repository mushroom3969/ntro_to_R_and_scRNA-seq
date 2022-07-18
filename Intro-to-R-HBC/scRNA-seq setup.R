# if (!require("BiocManager", quietly = TRUE))
#   install.packages("BiocManager")
# BiocManager::install(version = "3.14")

# options(repos = c(CRAN="https://foo.bar"), BiocManager.check_repositories = FALSE)
# options(repos = c(CRAN="https://cran.rstudio.com/"), BiocManager.check_repositories = FALSE)

# BiocManager::install("SingleCellExperiment")
# BiocManager::install("AnnotationHub")
# BiocManager::install("ensembldb")
# BiocManager::install("multtest")
# BiocManager::install("glmGamPoi")

# install.packages("tidyverse")
# install.packages("Matrix")
# install.packages("RCurl")
# install.packages("scales")
# install.packages("cowplot")
# install.packages("BiocManager")
# install.packages("Seurat")
# install.packages("metap")

library(Seurat)
library(tidyverse)
library(Matrix)
library(RCurl)
library(scales)
library(cowplot)
library(SingleCellExperiment)
library(AnnotationHub)
library(ensembldb)

sessionInfo()

BiocManager::valid()

# BiocManager::install(c(
#   "quantreg", "rlang"
# ), update = TRUE, ask = FALSE)