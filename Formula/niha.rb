class Niha < Formula
  desc "AI-native governance CLI for development teams"
  homepage "https://nihaandco.com"
  version "0.4.0"
  license "Proprietary"

  on_arm do
    url "https://cli.nihaandco.com/releases/0.4.0/niha-darwin-arm64"
    sha256 "224513f542e782071a4f6529b7c19210956cf2866afae7a4ad675127d393b03d"
  end

  on_intel do
    url "https://cli.nihaandco.com/releases/0.4.0/niha-darwin-x64"
    sha256 "f51c35ae63d67e02ea20b686cb7d5f5162aa036e425106706e13313bec4a7726"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "niha-darwin-arm64" : "niha-darwin-x64"
    bin.install binary_name => "niha"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/niha --version")
  end
end
