# Homebrew Formula for prod CLI
# This file will be used to create the Homebrew formula

class Prod < Formula
    desc "Production CLI tool for development workflows"
    homepage "https://github.com/pushtoprod/prod"
    version "0.0.1-staging"  # This will be replaced by GitHub Actions with the actual version
    # We'll download directly from Supabase in the install method
    # No url needed since we're not using standard Homebrew download
    license "MIT"
    
    # No dependencies needed since we're downloading pre-built binaries
    
    # Supabase URL for binary downloads
    def supabase_url
      "https://ciqiwllxffhbvayspynk.supabase.co"
    end
    
    # Installation logic
    def install
      if OS.mac?
        if Hardware::CPU.arm?
          # Download and decompress from Supabase latest releases
          system "curl", "-L", "#{supabase_url}/storage/v1/object/public/cli-binaries/releases/latest/prod-v#{version}-darwin-arm64.gz", "-o", "prod-darwin-arm64.gz"
          system "gunzip", "prod-darwin-arm64.gz"
          bin.install "prod-darwin-arm64" => "prod"
        else
          system "curl", "-L", "#{supabase_url}/storage/v1/object/public/cli-binaries/releases/latest/prod-v#{version}-darwin-amd64.gz", "-o", "prod-darwin-amd64.gz"
          system "gunzip", "prod-darwin-amd64.gz"
          bin.install "prod-darwin-amd64" => "prod"
        end
      elsif OS.linux?
        if Hardware::CPU.arm?
          system "curl", "-L", "#{supabase_url}/storage/v1/object/public/cli-binaries/releases/latest/prod-v#{version}-linux-arm64.gz", "-o", "prod-linux-arm64.gz"
          system "gunzip", "prod-linux-arm64.gz"
          bin.install "prod-linux-arm64" => "prod"
        else
          system "curl", "-L", "#{supabase_url}/storage/v1/object/public/cli-binaries/releases/latest/prod-v#{version}-linux-amd64.gz", "-o", "prod-linux-amd64.gz"
          system "gunzip", "prod-linux-amd64.gz"
          bin.install "prod-linux-amd64" => "prod"
        end
      end
    end
    
    # Test the installation
    test do
      system "#{bin}/prod", "--version"
    end
end