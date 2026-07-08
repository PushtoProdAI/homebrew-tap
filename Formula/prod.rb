class Prod < Formula
  desc "Deploy code and agents with natural language. One binary, no backend."
  homepage "https://github.com/pushtoprodai/prod-cli"
  version "0.2.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.11/prod_0.2.11_darwin_arm64.tar.gz"
      sha256 "46e894991b46be2421501eba7b7d1fc9dcf1d90ac5829398dfd38df0e026bbd7"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.11/prod_0.2.11_darwin_amd64.tar.gz"
      sha256 "38d83bea8d061ae1a8c8d82a8c410ac4e5a835e8e123e2e7e714d7df78c13c59"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.11/prod_0.2.11_linux_arm64.tar.gz"
      sha256 "ae4c0dc2188ec8898fd9b43e3e54b3f89e1adb622417a7976abb946fb3bdb40a"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.11/prod_0.2.11_linux_amd64.tar.gz"
      sha256 "45d6d18081c769a03805591deaa55bb94731fdbd0c94f4ddf703b99a14c7500b"
    end
  end

  def install
    bin.install "prod"
  end

  test do
    system "#{bin}/prod", "--version"
  end
end
