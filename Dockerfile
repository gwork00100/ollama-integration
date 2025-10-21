FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && apt-get install -y curl gpg sudo

# Install Ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# Expose the Ollama API port
EXPOSE 11434

# Set environment variable to bind Ollama to 0.0.0.0
ENV OLLAMA_HOST=0.0.0.0:11434

# Start the Ollama server
CMD ["ollama", "serve"]
