# Use an official base image that supports Ollama (Ubuntu + Ollama install)
FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && apt-get install -y curl gpg sudo

# Install Ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# Expose the Ollama API port
EXPOSE 11434

# Run Ollama server, bound to 0.0.0.0 so Render can access it
CMD ["ollama", "serve", "--host", "0.0.0.0"]
