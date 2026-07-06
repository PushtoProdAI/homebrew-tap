class Prod < Formula
  desc "Deploy code and agents with natural language. One binary, no backend."
  homepage "https://github.com/pushtoprodai/prod-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.1.0/prod_0.1.0_darwin_arm64.tar.gz"
      sha256 "d28b7c3355adf6d0382c3af3a6897a5c514c54c8cf5d39d84db47b70bbabec9e"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.1.0/prod_0.1.0_darwin_amd64.tar.gz"
      sha256 "bfe056e9d9c4ea2396e30095e113b27005d3d5ddcb2f9b3aa7755d9a98283f0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.1.0/prod_0.1.0_linux_arm64.tar.gz"
      sha256 "d611bc2fb0cd66669e14c55414d11e0a126963e110fd2e9522c13fe56cef81ca"
    end
    on_intel do
      url "https://github.com/pushtoprodai/prod-cli/releases/download/v0.1.0/prod_0.1.0_linux_amd64.tar.gz"
      sha256 "bfd7468a6c8b715d0c2d406acd490eb31ace1007b3d3d03bd02088277c8823bb"
    end
  end

  def install
    bin.install "prod"
  end

  test do
    system "#{bin}/prod", "--version"
  end
end
