class Prod < Formula
  desc "Deploy code and agents with natural language. One binary, no backend."
  homepage "https://github.com/pushtoprodai/prod-cli"
  version "0.2.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.13/prod_0.2.13_darwin_arm64.tar.gz"
      sha256 "c45cd8ffb5668ed627aa0ad29c2c1fc0c6bebd25c6f6fd0e0420097d26e52222"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.13/prod_0.2.13_darwin_amd64.tar.gz"
      sha256 "445204b6eec587bdeef1ec6921ccebf42ddf3e117266ce78d08d85ad106e8c05"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.13/prod_0.2.13_linux_arm64.tar.gz"
      sha256 "77aa5c025b8a783ade39b0060ce4258cbb83f3da8301c26e44dc26eb65bdbc71"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.13/prod_0.2.13_linux_amd64.tar.gz"
      sha256 "37e6ec43ba7ac120548703f7c866820d868e7beb705f5905147698729027b547"
    end
  end

  def install
    bin.install "prod"
  end

  test do
    system "#{bin}/prod", "--version"
  end
end
