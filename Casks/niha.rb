cask "niha" do
  version "0.4.5"

  on_arm do
    sha256 "33b7dc6cd8865978a131c4a067bd0a8cb8cb526cb1fbbef668de7869dc4f3214"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "781296e59b7de4d9f1967cc1f0993368e44b72473e72e2b50cdedbd2d6aaaf30"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-x64"
    binary "niha-darwin-x64", target: "niha"
  end

  name "niha"
  desc "AI-native governance CLI for development teams"
  homepage "https://nihaandco.com"
end
