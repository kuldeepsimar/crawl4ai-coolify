FROM python:3.10-slim

WORKDIR /app

# Install git
RUN apt-get update && apt-get install -y git

# Clone specific version
RUN git clone https://github.com/unclecode/crawl4ai.git .

# Install Crawl4AI
RUN pip install .

# Expose port used by Crawl4AI
EXPOSE 11235

# Start command
CMD ["python", "-m", "crawl4ai", "start", "--host", "0.0.0.0"]
