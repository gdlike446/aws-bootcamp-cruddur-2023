#!/bin/bash
echo "Setting up Coder environment"

export CODER_WORKSPACE_ROOT="/home/coder"

export AWS_CLI_AUTO_PROMPT=on-partial
echo 'export AWS_CLI_AUTO_PROMPT=on-partial' >> ~/.bashrc

cd $CODER_WORKSPACE_ROOT

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

cd $CODER_WORKSPACE_ROOT/aws-bootcamp-cruddur-2023

echo "Coder environment setup complete!"
