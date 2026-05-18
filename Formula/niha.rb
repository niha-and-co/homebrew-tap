class Niha < Formula
  desc "AI-native governance CLI for development teams"
  homepage "https://nihaandco.com"
  version "0.4.1"
  license "Proprietary"

  on_arm do
    url "https://cli.nihaandco.com/releases/0.4.1/niha-darwin-arm64"
    sha256 "ae487a2403a9e1b89c1584053c1f9930169059e1e52ca143c3b840b2b7e536d8"
  end

  on_intel do
    url "https://cli.nihaandco.com/releases/0.4.1/niha-darwin-x64"
    sha256 "c0443c5426aa05077d8d3e26debd1162a5a4610edea74bf80eea3f8d2b4a17b4"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "niha-darwin-arm64" : "niha-darwin-x64"
    bin.install binary_name => "niha"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/niha --version")
  end
end
