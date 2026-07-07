class Prod < Formula
  desc "Deploy code and agents with natural language. One binary, no backend."
  homepage "https://github.com/pushtoprodai/prod-cli"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.3/prod_0.2.3_darwin_arm64.tar.gz"
      sha256 "34ee7da68d61ebfdcd95ba970abeae4a194ad085265679f83f25dfbe3eb0c101"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.3/prod_0.2.3_darwin_amd64.tar.gz"
      sha256 "65fd7ecfe32885b7d2ee5c136f767695254ae0855312137870904f74aa5172cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.3/prod_0.2.3_linux_arm64.tar.gz"
      sha256 "c0c6a33a0ca7f7af020782784559e1254525116f6d9ed14360d1e150c5d27f80"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.2.3/prod_0.2.3_linux_amd64.tar.gz"
      sha256 "a5c47d73969ff9e888371445d83038683d23d47602ab2380db5a484186ba8eea"
    end
  end

  def install
    bin.install "prod"
  end

  test do
    system "#{bin}/prod", "--version"
  end
end
