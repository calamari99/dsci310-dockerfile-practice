FROM rocker/rstudio:4.1.3

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl

#R Packages
RUN Rscript -e 'install.packages("remotes")'
RUN Rscript -e 'install.packages("MASS")'
# RUN Rscript -e 'remotes::install_versions("devtools","1.11.0")'



