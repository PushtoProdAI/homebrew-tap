class Prod < Formula
  desc "Deploy code and agents with natural language. One binary, no backend."
  homepage "https://github.com/pushtoprodai/prod-cli"
  version "0.2.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.8/prod_0.2.8_darwin_arm64.tar.gz"
      sha256 "b34adaa175481dee8bc9d89ae6e0ed09f4d8ba43009974f9dfcbc606436e21c2"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.8/prod_0.2.8_darwin_amd64.tar.gz"
      sha256 "c4504195d5f155ec22acddb0b8dc765e4709cbebcd58674046514f2db7647ec4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.8/prod_0.2.8_linux_arm64.tar.gz"
      sha256 "882228dc53368ef893fdbea543af9fe5263364d5fc1083b0198b3a907ae968a8"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.8/prod_0.2.8_linux_amd64.tar.gz"
      sha256 "d6a8f676023ec869df77ff957b02aa0b22f1b0b9a0a9351e3d5953535bab7172"
    end
  end

  def install
    bin.install "prod"
  end

  test do
    system "#{bin}/prod", "--version"
  end
end
