class Prod < Formula
  desc "Deploy code and agents with natural language. One binary, no backend."
  homepage "https://github.com/pushtoprodai/prod-cli"
  version "0.2.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.12/prod_0.2.12_darwin_arm64.tar.gz"
      sha256 "16bb69146d464ba4482819ba5a7330f4316a540d804e0a52543493dfd3bbafc1"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.12/prod_0.2.12_darwin_amd64.tar.gz"
      sha256 "437456e4315a6f3a088d69a1c624486fb8fba2395bb0d43a7f075e6cdb6c877e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.12/prod_0.2.12_linux_arm64.tar.gz"
      sha256 "6ddad407ac06931b99556f4bcf7b5702484665e13ec8236d9d47b6ce9777831b"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.12/prod_0.2.12_linux_amd64.tar.gz"
      sha256 "29fc1d4ac07258cce3eb6027535a8a4b6f20d1783dde27228946e8441e6d5cea"
    end
  end

  def install
    bin.install "prod"
  end

  test do
    system "#{bin}/prod", "--version"
  end
end
