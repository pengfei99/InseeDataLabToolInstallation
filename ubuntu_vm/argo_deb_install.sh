# Download the binary from https://github.com/argoproj/argo-workflows/releases/latest
curl -sLO https://github.com/argoproj/argo-workflows/releases/download/v3.1.3/argo-darwin-amd64.gz

# Unzip
gunzip argo-darwin-amd64.gz

# Make binary executable
chmod +x argo-darwin-amd64

# Move binary to path
mv ./argo-darwin-amd64 /usr/local/bin/argo

# Test installation
argo version
