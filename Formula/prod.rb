# Homebrew Formula for prod CLI
# This file will be used to create the Homebrew formula

class Prod < Formula
    desc "Production CLI tool for development workflows"
    homepage "https://github.com/pushtoprod/prod"
    version "prod-staging-33ae52f"  # This will be replaced by GitHub Actions with the actual version
    license "MIT"

    on_macos do
      if Hardware::CPU.arm?
        url "https://ithjwwsjhdziqnxrwydg.supabase.co/storage/v1/object/public/cli-binaries/releases/latest/prod-staging-33ae52f-darwin-arm64.gz"
        sha256 "0c82d268377261855cf0e6222679882561a0bad31c6070aa62fb2994db611f21"

        def install
          bin.install "prod-staging-33ae52f-darwin-arm64" => "prod"
        end
      end
      if Hardware::CPU.intel?
        url "https://ithjwwsjhdziqnxrwydg.supabase.co/storage/v1/object/public/cli-binaries/releases/latest/prod-staging-33ae52f-darwin-amd64.gz"
        sha256 "549f8c40a2b6b18b3614af28664833fdd5c6d90373eb89cf42f9524a1eb25282"

        def install
          bin.install "prod-staging-33ae52f-darwin-amd64.gz" => "prod"
        end
      end
    end

    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://ithjwwsjhdziqnxrwydg.supabase.co/storage/v1/object/public/cli-binaries/releases/latest/prod-staging-33ae52f-linux-arm64.gz"
        sha256 "9ec9732191510d873323166dd1c882d588741bc56f35e09fd29dccedd2b8451f"

        def install
          bin.install "prod-staging-33ae52f-linux-arm64.gz" => "prod"
        end
      end
      if Hardware::CPU.intel?
        url "https://ithjwwsjhdziqnxrwydg.supabase.co/storage/v1/object/public/cli-binaries/releases/latest/prod-staging-33ae52f-linux-amd64.gz"
        sha256 "7a9ec180173a55c11c32c6d99a96312c199c2a419b8ee9a38ce4c9cf40fe44d5"

        def install
          bin.install "prod-staging-33ae52f-linux-amd64.gz" => "prod"
        end
      end
    end
    
    # Test the installation
    test do
      system "#{bin}/prod", "--version"
    end
end
