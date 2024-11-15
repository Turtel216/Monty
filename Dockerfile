# Use GHC 9.2
FROM haskell:9.2

# Install LLVM 9 for compatibility with llvm-hs-9.0.1
RUN apt-get update && \
    apt-get install -y wget lsb-release gnupg && \
    wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - && \
    echo "deb http://apt.llvm.org/$(lsb_release -cs)/ llvm-toolchain-$(lsb_release -cs)-9 main" | tee /etc/apt/sources.list.d/llvm9.list && \
    apt-get update && \
    apt-get install -y llvm-9 llvm-9-dev && \
    ln -s /usr/bin/llvm-config-9 /usr/local/bin/llvm-config && \
    rm -rf /var/lib/apt/lists/*

# Set up a working directory in the container
WORKDIR /app

# Copy your Haskell project files into the container
COPY . /app

# Install project dependencies
RUN cabal update && cabal build --only-dependencies

# Build the project
RUN cabal build

# Specify the entry point (optional)
CMD ["cabal", "run"]

