class Prod < Formula
  desc "Deploy code and agents with natural language. One binary, no backend."
  homepage "https://github.com/pushtoprodai/prod-cli"
  version "0.2.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.14/prod_0.2.14_darwin_arm64.tar.gz"
      sha256 "c49ec1da5ca115cbeaa55ebbf9ba30dab71a0a1c66c73916a6e2d28f3f1a460a"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.14/prod_0.2.14_darwin_amd64.tar.gz"
      sha256 "8b26cf75931ce6358f26d9128ef165bb73d8de95b45e53de0da8a17d9a2850db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.14/prod_0.2.14_linux_arm64.tar.gz"
      sha256 "e570a966f0ce5d12334e31e48d7cb497b066aa8d956a11ee5b28e1349d1300f7"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.14/prod_0.2.14_linux_amd64.tar.gz"
      sha256 "628ab5378cfa9c9d7b2efacc6f7888b46d968f6a36476e645f85af555ca61178"
    end
  end

  def install
    bin.install "prod"
  end

  test do
    system "#{bin}/prod", "--version"
  end
end
