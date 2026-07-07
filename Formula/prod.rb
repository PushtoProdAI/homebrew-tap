class Prod < Formula
  desc "Deploy code and agents with natural language. One binary, no backend."
  homepage "https://github.com/pushtoprodai/prod-cli"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.4/prod_0.2.4_darwin_arm64.tar.gz"
      sha256 "5cae5ff9620e2ec38c0d663643a47eb9eaa8de8fa6341f640be57da4c4ac6d11"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.4/prod_0.2.4_darwin_amd64.tar.gz"
      sha256 "793503953951ed2d572cf7bd338a75bb84e30f2cdb4e5ce9c19b9eaaf5d2dd00"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.4/prod_0.2.4_linux_arm64.tar.gz"
      sha256 "9889e4005848f9aff095fffaae7166e19fbbb69f0e5a3ac2c109d49c95b6549a"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.4/prod_0.2.4_linux_amd64.tar.gz"
      sha256 "114a8af005aa348e3f61ab719763d93d572764855b8fd22dbe823b6ee1e161a8"
    end
  end

  def install
    bin.install "prod"
  end

  test do
    system "#{bin}/prod", "--version"
  end
end
