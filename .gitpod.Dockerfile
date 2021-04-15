FROM gitpod/workspace-full
USER gitpod

# Install Heroku CLI
RUN curl https://cli-assets.heroku.com/install-ubuntu.sh | sudo sh

# Add to PATH
RUN export PATH=$PATH:.

# SSH for github remote
RUN sudo mv /etc/ssh/ssh_config /etc/ssh/ssh_config.bak
RUN sudo cp /workspace/ssh_config /etc/ssh/