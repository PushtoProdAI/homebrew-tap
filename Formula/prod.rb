class Prod < Formula
  desc "Deploy code and agents with natural language. One binary, no backend."
  homepage "https://github.com/pushtoprodai/prod-cli"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.2/prod_0.2.2_darwin_arm64.tar.gz"
      sha256 "87bd2242fae6eaf369575a5a7f2f1aa880ab2a1bc2d59cd22011d270d864b665"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.2/prod_0.2.2_darwin_amd64.tar.gz"
      sha256 "c0a0c50a88856e0fd2b71970834caa5f2d1120fd42947c47a233cc59362abf8a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.2/prod_0.2.2_linux_arm64.tar.gz"
      sha256 "4a5373ed711890af17e2bbaacb5ade6dc34443fd573790255441975acc06cc35"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.2/prod_0.2.2_linux_amd64.tar.gz"
      sha256 "734e719851c223b134ca8ceaefa491a473709d88d9011121783de7264b8e9348"
    end
  end

  def install
    bin.install "prod"
  end

  test do
    system "#{bin}/prod", "--version"
  end
end
