class Prod < Formula
  desc "Deploy code and agents with natural language. One binary, no backend."
  homepage "https://github.com/pushtoprodai/prod-cli"
  version "0.2.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.17/prod_0.2.17_darwin_arm64.tar.gz"
      sha256 "52c852ac0d2aa61cea2ade2b3e3c282e0546390a16fc670680bb53a6b036413d"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.17/prod_0.2.17_darwin_amd64.tar.gz"
      sha256 "eaa47b8ddfbb03448e3e274838ddb4bcee13571c27149e6a5a61f1557d6a0f2b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.17/prod_0.2.17_linux_arm64.tar.gz"
      sha256 "3fbaf7b0422f711ad541df18fb764b1c3baa5afcb95d7d9b48c44f4b94f830c0"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.17/prod_0.2.17_linux_amd64.tar.gz"
      sha256 "1c9029923d4f86a625aa7001ecfa3857591f58fae1f87a2e5755e7a793f912f0"
    end
  end

  def install
    bin.install "prod"
  end

  test do
    system "#{bin}/prod", "--version"
  end
end
