cask "niha" do
  version "1.2.1"

  on_arm do
    sha256 "823eeb723b62235e6f948d85a1a0be9e4fb6b6fdc90648d3a71a74bc3ac36e28"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "a18e6c937ad7b4563e24edbac06ead7e6f5edb41d3252129e706f1271bed3899"
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
