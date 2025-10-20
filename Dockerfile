# Use an official base image that supports Ollama (Ubuntu + Ollama install)
FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && apt-get install -y curl gpg sudo

# Install Ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# Expose port (Ollama defaults to 11434)
EXPOSE 11434

# Run Ollama server
CMD ["ollama", "serve"]
