# Use the official JupyterHub Docker image as the base
FROM jupyterhub/jupyterhub:latest

# Install oauthenticator for GitHub authentication
RUN pip install authenticator dockerspawner


