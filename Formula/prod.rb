class Prod < Formula
  desc "Deploy code and agents with natural language. One binary, no backend."
  homepage "https://github.com/pushtoprodai/prod-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.0/prod_0.2.0_darwin_arm64.tar.gz"
      sha256 "2ea307410cfa8feee77841ff69689c8c31c236ab3506fa13a5952b66374ceddf"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.0/prod_0.2.0_darwin_amd64.tar.gz"
      sha256 "24bdbadf0c4276be58fbf348a052cc35f9d04c4785a628f139f051b2a02d19c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.0/prod_0.2.0_linux_arm64.tar.gz"
      sha256 "f7b828e8e6bfbbc28034e79d8661aaf176f623457ba4bd7c173f6a57d9fba25e"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.0/prod_0.2.0_linux_amd64.tar.gz"
      sha256 "86e22b82069bf6914d1fb660d0e70248a541c4c8e0cd23b1e0620b95cff9b09e"
    end
  end

  def install
    bin.install "prod"
  end

  test do
    system "#{bin}/prod", "--version"
  end
end
