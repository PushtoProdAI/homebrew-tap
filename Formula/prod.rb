class Prod < Formula
  desc "Deploy code and agents with natural language. One binary, no backend."
  homepage "https://github.com/pushtoprodai/prod-cli"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.5/prod_0.2.5_darwin_arm64.tar.gz"
      sha256 "683b6524914df9a1301c92c68b083befe71ef57eb540701e74fc7ce5941f06c4"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.5/prod_0.2.5_darwin_amd64.tar.gz"
      sha256 "9e29925a1dcc5ee4192751ed2465024b338ebfe5b9a2608e37dcc0c24c55e8d4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.5/prod_0.2.5_linux_arm64.tar.gz"
      sha256 "a9a5df1917233606195a48a2a3a14c19e854d35c2bd5dc9dbe91a189179f8e66"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.5/prod_0.2.5_linux_amd64.tar.gz"
      sha256 "04813f90f000f9dae9c82deced6dde5cb6b790876b2e35517b468bb08d30c4ae"
    end
  end

  def install
    bin.install "prod"
  end

  test do
    system "#{bin}/prod", "--version"
  end
end
