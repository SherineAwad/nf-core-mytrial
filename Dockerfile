FROM nfcore/base
LABEL authors="Sherine Awad" \
      description="Docker image containing all requirements for nf-core/mytrial pipeline"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/nf-core-mytrial-1.0dev/bin:$PATH
