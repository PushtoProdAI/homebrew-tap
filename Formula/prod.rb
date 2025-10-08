# Homebrew Formula for prod CLI
# This file will be used to create the Homebrew formula

class Prod < Formula
    desc "Production CLI tool for development workflows"
    homepage "https://github.com/pushtoprod/prod"
    version "0.0.1-staging"  # This will be replaced by GitHub Actions with the actual version
    license "MIT"

    on_macos do
      if Hardware::CPU.arm?
        url "https://ciqiwllxffhbvayspynk.supabase.co/storage/v1/object/public/cli-binaries/releases/latest/prod-v0.0.1-staging-darwin-arm64.gz"
        sha256 "c7ebfdc8a79be7b3b21e6565f95de93f0a61bc3a53be3b114b02bc202b0b7ee0"

        def install
          bin.install "prod-v0.0.1-staging-darwin-arm64" => "prod"
        end
      end
      if Hardware::CPU.intel?
        url "https://ciqiwllxffhbvayspynk.supabase.co/storage/v1/object/public/cli-binaries/releases/latest/prod-v0.0.1-staging-darwin-amd64.gz"
        sha256 "e022775d6b11f236f66bf3c73a87c66b24f4c4e50d778add548ff6339680f469"

        def install
          bin.install "prod-v0.0.1-staging-darwin-amd64" => "prod"
        end
      end
    end

    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://ciqiwllxffhbvayspynk.supabase.co/storage/v1/object/public/cli-binaries/releases/latest/prod-v0.0.1-staging-linux-arm64.gz"
        sha256 "58fcd0b66b91ccad4a3ddaa595d58eee5d27a3f52cdc992aeff446aac10a38b1"

        def install
          bin.install "prod-v0.0.1-staging-linux-arm64" => "prod"
        end
      end
      if Hardware::CPU.intel?
        url "https://ciqiwllxffhbvayspynk.supabase.co/storage/v1/object/public/cli-binaries/releases/latest/prod-v0.0.1-staging-linux-amd64.gz"
        sha256 "a469764be712980206cd1a947263dae2c81e2d328a9e308eb8efb71baf651775"

        def install
          bin.install "prod-v0.0.1-staging-linux-amd64" => "prod"
        end
      end
    end
    
    # Test the installation
    test do
      system "#{bin}/prod", "--version"
    end
end