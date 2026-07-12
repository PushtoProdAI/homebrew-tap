class Prod < Formula
  desc "Deploy code and agents with natural language. One binary, no backend."
  homepage "https://github.com/pushtoprodai/prod-cli"
  version "0.2.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.16/prod_0.2.16_darwin_arm64.tar.gz"
      sha256 "2ea35510b9bbe077fa7758aeb45b73890f740844789b0eccf2d5f1f197f39db0"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.16/prod_0.2.16_darwin_amd64.tar.gz"
      sha256 "73d40c55e678c242fb0fdc85eaafca965c7feca28c1c46e66cf0a121ae424f19"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.16/prod_0.2.16_linux_arm64.tar.gz"
      sha256 "34076d85a90f6f0c489ff6d601f3ede5919b884dd6f1138bf25f94abd621c62b"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.16/prod_0.2.16_linux_amd64.tar.gz"
      sha256 "d97443276c9f6ede9771c8bb0c52848f1ec5ab6961d67ea24be111391e83c6db"
    end
  end

  def install
    bin.install "prod"
  end

  test do
    system "#{bin}/prod", "--version"
  end
end
