cask "niha" do
  version "0.5.1"

  on_arm do
    sha256 "c96dfe7dc5835e7ae13bf110e4fbdc80c1f62d0c7a28c7db9ecdf625bdbe2528"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "aed1b80f252ae05a2bcfa0e40ab25ac1f8a8a26b35807e6548b18901b0388147"
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
