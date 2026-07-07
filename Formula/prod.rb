class Prod < Formula
  desc "Deploy code and agents with natural language. One binary, no backend."
  homepage "https://github.com/pushtoprodai/prod-cli"
  version "0.2.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.7/prod_0.2.7_darwin_arm64.tar.gz"
      sha256 "524d0ea3d6937a3756fdf40ee368d265e48cba79d0bf681cd84b2764a2c4a96e"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.7/prod_0.2.7_darwin_amd64.tar.gz"
      sha256 "dca0ace5c9b4fbba5a983d82233e4d7ead904549df74ac6b7b204f7da5cd9c49"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.7/prod_0.2.7_linux_arm64.tar.gz"
      sha256 "53e28d43b0fe1d298a2a616accf8b6533dc17d18bc99027d0d125769e4345894"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.7/prod_0.2.7_linux_amd64.tar.gz"
      sha256 "3f43649bd69b5b1eb854ca94f53d36a4265b52902fa04915faac707aa12c308a"
    end
  end

  def install
    bin.install "prod"
  end

  test do
    system "#{bin}/prod", "--version"
  end
end
