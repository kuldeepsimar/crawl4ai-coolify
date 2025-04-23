FROM python:3.10-slim

WORKDIR /app

# Install git
RUN apt-get update && apt-get install -y git

# Clone specific version
RUN git clone --branch 0.6.0rc1-r1 https://github.com/unclecode/crawl4ai.git .

# Install Crawl4AI
RUN pip install .

# Expose port used by Crawl4AI
EXPOSE 11235

# Start command
CMD ["crawl4ai", "start", "--host", "0.0.0.0"]
