cask "niha" do
  version "0.4.4"

  on_arm do
    sha256 "945ed0eaf8208459b77dfecf218e0634d0a751975fcd032c381f1114fc44806f"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "897f3edf4e2165d8c4fc61e4aea0b6f8f3dd31e5027c2089c16ba59b7d3b4702"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-x64"
    binary "niha-darwin-x64", target: "niha"
  end

  name "niha"
  desc "AI-native governance CLI for development teams"
  homepage "https://nihaandco.com"
end
