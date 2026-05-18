class Niha < Formula
  desc "AI-native governance CLI for development teams"
  homepage "https://nihaandco.com"
  version "0.4.0"
  license "Proprietary"

  on_arm do
    url "https://cli.nihaandco.com/releases/0.4.0/niha-darwin-arm64"
    sha256 "PLACEHOLDER_ARM64_SHA"
  end

  on_intel do
    url "https://cli.nihaandco.com/releases/0.4.0/niha-darwin-x64"
    sha256 "PLACEHOLDER_X64_SHA"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "niha-darwin-arm64" : "niha-darwin-x64"
    bin.install binary_name => "niha"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/niha --version")
  end
end
