cask "niha" do
  version "1.3.1"

  on_arm do
    sha256 "0c460a37922320cd51b7188e3757c6e5f2892247a7aa1d8a0af6fb0a779fa5a5"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "6836b33b14a3fe395ff05b5a182411d66850203b0ecb82f8a897d4eba85a45ae"
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
