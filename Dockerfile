FROM continuumio/miniconda3:24.7.1-0

COPY environment.yml .
RUN conda env create -f environment.yml

# Activate the Conda environment
RUN echo "conda activate raster_tutorial" >> ~/.bashrc
ENV PATH="$PATH:/opt/conda/envs/raster_tutorial/bin"

# Create a non-root user and switch to that user
RUN useradd -m gisuser
USER gisuser

WORKDIR /home/gisuser
COPY --chown=gisuser raster_analysis.ipynb .
COPY --chown=gisuser raster_processing.ipynb .

# Expose the JupyterLab port
EXPOSE 8888

# Start JupyterLab
CMD ["jupyter", "lab", "--ip=0.0.0.0"]