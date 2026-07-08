class Prod < Formula
  desc "Deploy code and agents with natural language. One binary, no backend."
  homepage "https://github.com/pushtoprodai/prod-cli"
  version "0.2.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.9/prod_0.2.9_darwin_arm64.tar.gz"
      sha256 "38c357f1277d537c621e1ea115a3732724c61a7f6efe62f090274b6a66c9234f"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.9/prod_0.2.9_darwin_amd64.tar.gz"
      sha256 "5f971daaddb041b299c836ed3e340438a440bb68c5c225bb7c99b7e367f1cc65"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.9/prod_0.2.9_linux_arm64.tar.gz"
      sha256 "dc225dd1b9b55ad8e8e8d13753a53bf3556fdb0d7fd592dead97c9bd9b6f8b2c"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.9/prod_0.2.9_linux_amd64.tar.gz"
      sha256 "8f13de9b7e0ecbe8dbbf0f642caf7bb6c37097abc1f23e0ef773e5c0497e843f"
    end
  end

  def install
    bin.install "prod"
  end

  test do
    system "#{bin}/prod", "--version"
  end
end
