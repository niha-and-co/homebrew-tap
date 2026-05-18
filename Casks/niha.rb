cask "niha" do
  version "0.4.3"

  on_arm do
    sha256 "cd86b425e1a8b7c1448d1e52775a1de13e984a4d9376548c3f66c3036c3d3a14"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "26c5d4d6b4bb0a25e53d1b76edee64628519521b17ed88038e8d4685671bbb46"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-x64"
    binary "niha-darwin-x64", target: "niha"
  end

  name "niha"
  desc "AI-native governance CLI for development teams"
  homepage "https://nihaandco.com"
end
