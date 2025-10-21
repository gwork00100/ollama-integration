FROM ubuntu:22.04

RUN apt-get update && apt-get install -y curl gpg sudo

RUN curl -fsSL https://ollama.com/install.sh | sh

# Download models here (example, adjust based on Ollama CLI)
RUN ollama pull llama2:latest
RUN ollama pull llama3:latest

EXPOSE 11434

CMD ["sh", "-c", "ollama serve --host 0.0.0.0 --port $PORT"]
