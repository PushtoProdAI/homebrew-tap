class Prod < Formula
  desc "Deploy code and agents with natural language. One binary, no backend."
  homepage "https://github.com/pushtoprodai/prod-cli"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.1/prod_0.2.1_darwin_arm64.tar.gz"
      sha256 "bce8fa771b17ea060fa6b3ef65aa26739179aa180d71b822bd7283e5fa654e9d"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.1/prod_0.2.1_darwin_amd64.tar.gz"
      sha256 "2824e268ce09e2391bcb325c37222faf8b2f02754fe28a43ab98f1166d330f11"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.1/prod_0.2.1_linux_arm64.tar.gz"
      sha256 "3b2379d3dc2c6a0d55547adf62dfc2af13b73c18f858eda629f44cdcb7faffba"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.1/prod_0.2.1_linux_amd64.tar.gz"
      sha256 "504f85a2a691158db2dcf0a54c447aefe90389a318352c70f9791eeee2e2c357"
    end
  end

  def install
    bin.install "prod"
  end

  test do
    system "#{bin}/prod", "--version"
  end
end
