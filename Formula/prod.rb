class Prod < Formula
  desc "Deploy code and agents with natural language. One binary, no backend."
  homepage "https://github.com/pushtoprodai/prod-cli"
  version "0.2.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.10/prod_0.2.10_darwin_arm64.tar.gz"
      sha256 "063383bec217b59590f9dbb451ceeb8fde3d31ddc79242ca80c85cf586f72f10"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.10/prod_0.2.10_darwin_amd64.tar.gz"
      sha256 "4a5e85fe41f6b3efdcbb44479be3ee49384aaf6ca17dae9ed28d53f4ce59c742"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.10/prod_0.2.10_linux_arm64.tar.gz"
      sha256 "f92473f959174ebc4c7f8e65004f571b78f662f3ee1e1401b1df76fbba8121ad"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.10/prod_0.2.10_linux_amd64.tar.gz"
      sha256 "6cf413b57dd8435d58ba6b9c54be025449ebb965fdc51ff40c919e0e49ec132e"
    end
  end

  def install
    bin.install "prod"
  end

  test do
    system "#{bin}/prod", "--version"
  end
end
