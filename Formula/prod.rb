class Prod < Formula
  desc "Deploy code and agents with natural language. One binary, no backend."
  homepage "https://github.com/pushtoprodai/prod-cli"
  version "0.2.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.6/prod_0.2.6_darwin_arm64.tar.gz"
      sha256 "efd7e5c79d58e845f6a41473cff77bce227987e187b81f043e339a071cb8dbc1"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.6/prod_0.2.6_darwin_amd64.tar.gz"
      sha256 "f05ef9b26dbf4140b705e9fb7d7df01f011e63732832ae79a004e5744bf97dc0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.6/prod_0.2.6_linux_arm64.tar.gz"
      sha256 "6734fe554c854f19396895cd4ccd110ad9119c03540892bafd785a5e27192427"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.6/prod_0.2.6_linux_amd64.tar.gz"
      sha256 "eab7dcde5f05cf51293e91424caa6f3b7d5e09bd9818d8d548a8f53dcd2192f2"
    end
  end

  def install
    bin.install "prod"
  end

  test do
    system "#{bin}/prod", "--version"
  end
end
