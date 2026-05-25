cask "niha" do
  version "0.8.3"

  on_arm do
    sha256 "a8ee5f489bda1ab597cf5e9516c5d77137a55cd4b85de4167eb79633df11838a"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "c4082e9fbc1b9979dedf7bbc51af5fb8c6a728c854118c96a2bf2b1f6df60f85"
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
