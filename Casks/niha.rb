cask "niha" do
  version "0.4.6"

  on_arm do
    sha256 "ee957d9167fb8f3670bcf7bce986fd31789b318fb17ed01feac4aa8d23ad00f2"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "e731957964160d6b1a8440a25a1c9ee967fa4abc91ecc4131484a80982e899c2"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-x64"
    binary "niha-darwin-x64", target: "niha"
  end

  name "niha"
  desc "AI-native governance CLI for development teams"
  homepage "https://nihaandco.com"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{staged_path}"]
  end
end
