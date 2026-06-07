cask "niha" do
  version "0.10.1"

  on_arm do
    sha256 "52cf65815124473f186fcc88ddd75c00d7bdafc155324a5f82ae24e3d27554e2"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "4660c8ded562e527e1fe8bdf39ad93d921f5deab75072c9c4f257e95e1995b2b"
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
