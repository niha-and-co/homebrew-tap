cask "niha" do
  version "0.6.0"

  on_arm do
    sha256 "e14d2c10c3b0e0205af522990b36b693ca26c1e9b7b75b31781f2b02afa9fffe"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "6a43a749f0b7c5773e54ffa81ab4fb4b275d9065524002d0ec056ac92572da28"
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
