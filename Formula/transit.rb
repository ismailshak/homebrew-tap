class Transit < Formula
  desc "CLI tool that interacts with local transit information."
  homepage "https://github.com/ismailshak/transit"
  sha256 "62f173b11fbaca7c7fa20fa449047a7f94b0c965d08e15e955b12e7ae483bae0"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ismailshak/transit/releases/download/v0.3.0/transit_Linux_x86_64.tar.gz"
    sha256 "9ecb0e07155794db64700e22ada2acb399925024f2356d505cca36c7eea94a27"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/ismailshak/transit/releases/download/v0.3.0/transit_Linux_arm64.tar.gz"
    sha256 "d3e4fd909e81b1b44838f9944f8697444b9660a03428560006625b7ca0f9ad17"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ismailshak/transit/releases/download/v0.3.0/transit_Darwin_x86_64.tar.gz"
    sha256 "d4599f2f4a115398ec3475345514439d5b2fb270a35da393d03df4879d4eea43"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ismailshak/transit/releases/download/v0.3.0/transit_Darwin_arm64.tar.gz"
    sha256 "eb4f044aea41cd5394b69064ec5af8a5c0bb7e5feb699b5a1e8f31c7e6de7fa2"
  end

  def install
    bin.install "transit"
  end

  test do
    touch "./config.yml"
    assert_match "0.3.0", shell_output("#{bin}/transit --version --config ./config.yml")
  end
end
