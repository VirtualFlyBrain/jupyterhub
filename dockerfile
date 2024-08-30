# Use the official JupyterHub Docker image as the base
FROM jupyterhub/jupyterhub:latest

RUN sudo apt-get update -y; sudo apt-get install -y libglfw3-dev libgles2-mesa-dev
RUN pip install --upgrade pip --quiet

# Install oauthenticator for GitHub authentication
RUN pip install --upgrade oauthenticator dockerspawner jupyterlab vfb_connect ipywidgets matplotlib

RUN python -c 'from vfb_connect import vfb'

ENV JUPYTER_ENABLE_LAB=yes
