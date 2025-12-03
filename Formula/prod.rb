# Homebrew Formula for prod CLI
# This file will be used to create the Homebrew formula

class Prod < Formula
    desc "Production CLI tool for development workflows"
    homepage "https://github.com/pushtoprod/prod"
    version "prod-v0.0.2"  # This will be replaced by GitHub Actions with the actual version
    license "MIT"

    on_macos do
      if Hardware::CPU.arm?
        url "https://ithjwwsjhdziqnxrwydg.supabase.co/storage/v1/object/public/cli-binaries/releases/latest/prod-v0.0.2-darwin-arm64.gz"
        sha256 "162098e0c3a158f247ef5d67fcc8c19f2021dafd1a016d49a0d66d000b31f61c"

        def install
          bin.install "prod-v0.0.2-darwin-arm64" => "prod"
        end
      end
      if Hardware::CPU.intel?
        url "https://ithjwwsjhdziqnxrwydg.supabase.co/storage/v1/object/public/cli-binaries/releases/latest/prod-v0.0.2-darwin-amd64.gz"
        sha256 "553f3b6cc0a797ddd91b82da095fb6013843fdd1143f276195544efcf1e0b1eb"

        def install
          bin.install "prod-v0.0.2-darwin-amd64" => "prod"
        end
      end
    end

    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://ithjwwsjhdziqnxrwydg.supabase.co/storage/v1/object/public/cli-binaries/releases/latest/prod-v0.0.2-linux-arm64.gz"
        sha256 "fd0d87923bc2d2c23d7878db3612bbf71f0b619c2f590748d46d60914c73610d"

        def install
          bin.install "prod-v0.0.2-linux-arm64" => "prod"
        end
      end
      if Hardware::CPU.intel?
        url "https://ithjwwsjhdziqnxrwydg.supabase.co/storage/v1/object/public/cli-binaries/releases/latest/prod-v0.0.2-linux-amd64.gz"
        sha256 "720db7e380035a6e10db0f4a3868c298611d9c4e4aee32ec2fafe1d6e060ed91"

        def install
          bin.install "prod-v0.0.2-linux-amd64" => "prod"
        end
      end
    end
    
    # Test the installation
    test do
      system "#{bin}/prod", "--version"
    end
end
