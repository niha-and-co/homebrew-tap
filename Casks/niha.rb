cask "niha" do
  version "0.10.9"

  on_arm do
    sha256 "4647108ac8b6bfcae1a0a6f7ab07c57a0682fa278b54a8e318fc9d66505421af"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "739fac608c9e83c370fb6c1d3d9701dbc92ffdbeb6bf51a3ae851ea6f12f4691"
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
