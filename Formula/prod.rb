class Prod < Formula
  desc "Deploy code and agents with natural language. One binary, no backend."
  homepage "https://github.com/pushtoprodai/prod-cli"
  version "0.2.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.15/prod_0.2.15_darwin_arm64.tar.gz"
      sha256 "ef5d299bc49e8949668c36243db19f39b9a0d9f92c77f9444f55b02f4967b221"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.15/prod_0.2.15_darwin_amd64.tar.gz"
      sha256 "2840a8e4d93c2b8ca9f7932f0dbd2d62ec7718097c284b988fe8ed07e46ebff3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.15/prod_0.2.15_linux_arm64.tar.gz"
      sha256 "4e4b65affda21f5dbd3c2f83694638551f6e10e414424999994699cb6afecb92"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.15/prod_0.2.15_linux_amd64.tar.gz"
      sha256 "42f310a18f7b259391d125b93bbe85f97954e5c852163441547d56a7367408c7"
    end
  end

  def install
    bin.install "prod"
  end

  test do
    system "#{bin}/prod", "--version"
  end
end
