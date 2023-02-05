class Transit < Formula
  desc "CLI tool that interacts with local transit information"
  homepage "https://github.com/ismailshak/transit"
  version "1.0.0"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ismailshak/transit/releases/download/v#{version}/transit_Linux_x86_64.tar.gz"
    sha256 "5ebc6aa1ffe4f62b7934d15ca6683df6c8ca9b9c01de4b10ac47ecfea32bfcd4"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/ismailshak/transit/releases/download/v#{version}/transit_Linux_arm64.tar.gz"
    sha256 "e958171b2a62bb39c4a5af2a84494b2477ae14a0aa9ec25c9c4082e070ef489c"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ismailshak/transit/releases/download/v#{version}/transit_Darwin_x86_64.tar.gz"
    sha256 "33d32cb1f9915520c5d06a7f1483f09fcbbb3ec4439b523132528296f8249e43"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ismailshak/transit/releases/download/v#{version}/transit_Darwin_arm64.tar.gz"
    sha256 "8d1fd7e9b67ffcfc9040939fe234ae2cb116221d76c5d48829f2ac05fe7b7546"
  end

  def install
    bin.install "transit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/transit --version")
  end
end
