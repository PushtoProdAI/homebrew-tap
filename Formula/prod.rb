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
        sha256 "e52ec34aff81e52dee077893edee8aa5608592742c43084095dcbdf57120fa15"

        def install
          bin.install "prod-v0.0.2-darwin-arm64" => "prod"
        end
      end
      if Hardware::CPU.intel?
        url "https://ithjwwsjhdziqnxrwydg.supabase.co/storage/v1/object/public/cli-binaries/releases/latest/prod-v0.0.2-darwin-amd64.gz"
        sha256 "b26237ae239bd1164a55448a643288764b9a2a7d056ccd074759e3c6c0bcefbd"

        def install
          bin.install "prod-v0.0.2-darwin-amd64" => "prod"
        end
      end
    end

    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://ithjwwsjhdziqnxrwydg.supabase.co/storage/v1/object/public/cli-binaries/releases/latest/prod-v0.0.2-linux-arm64.gz"
        sha256 "150e2b301005d97a5e21c943c457b4eee2b14a4baeb99b0a00d312c9e40daa40"

        def install
          bin.install "prod-v0.0.2-linux-arm64" => "prod"
        end
      end
      if Hardware::CPU.intel?
        url "https://ithjwwsjhdziqnxrwydg.supabase.co/storage/v1/object/public/cli-binaries/releases/latest/prod-v0.0.2-linux-amd64.gz"
        sha256 "afc2932fa761e8d9ce7f524678cb04e63ea5c664a506f783ef39e2082502cc46"

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
