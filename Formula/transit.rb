class Transit < Formula
  desc "CLI tool that interacts with local transit information"
  homepage "https://github.com/ismailshak/transit"
  version "0.4.0"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ismailshak/transit/releases/download/v#{version}/transit_Linux_x86_64.tar.gz"
    sha256 "73cb4655f1622365cfb71a7f882b39efecadaabaee5a00e84eb09f6d35f168ac"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/ismailshak/transit/releases/download/v#{version}/transit_Linux_arm64.tar.gz"
    sha256 "a0576ee1248e976f121d4d206b2974e140926bfec5b58e7743d892bcd59b0777"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ismailshak/transit/releases/download/v#{version}/transit_Darwin_x86_64.tar.gz"
    sha256 "3a6ac0f01161cabf8226d4651f1931d7f540971b8433a70f34265b2180ad5ee9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ismailshak/transit/releases/download/v#{version}/transit_Darwin_arm64.tar.gz"
    sha256 "e2d3d9092ea232927c0e1ef5095e6872b23abbdf3c1b7ca79cc2b70e564f4488"
  end

  def install
    bin.install "transit"
  end

  test do
    assert_match "#{version}", shell_output("#{bin}/transit --version")
  end
end
