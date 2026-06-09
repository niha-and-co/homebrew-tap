cask "niha" do
  version "0.10.7"

  on_arm do
    sha256 "06b02ac945fbe16f72f6b339207c8d749cfc50041377ba9c418247fe03c7879b"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "a7ccd77a690e5b34fb57fbb6bce5124cd258f399beaa7a146b21fc9d9f35473f"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-x64"
    binary "niha-darwin-x64", target: "niha"
  end

  name "niha"
  desc "AI-native governance CLI for development teams"
  homepage "https://nihaandco.com"

  preflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{caskroom_path}"]
  end
end
