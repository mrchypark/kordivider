renv::deactivate()

library(reticulate)

install_miniconda()

envnm <- "kordiv"

reticulate::conda_create(envnm,
                         packages = c("python=3.6","numpy=1.16.5"),
)

use_condaenv(envnm, required = TRUE)

conda_install(envnm, packages = c('h5py==2.10.0'))
conda_install(envnm, packages = c('tensorflow==1.9.0'))
conda_install(envnm, packages = c('keras==2.1.5'))
conda_install(envnm, packages = c('keras2onnx'))

py_install("h5py==2.10.0")
py_install("tensorflow==1.9.0")
py_install("keras==2.1.5'")
py_install("keras2onnx")

keras <- import("keras")

