cask "niha" do
  version "0.4.2"

  on_arm do
    sha256 "3857e2d7c68f4e786526319247622ce39297748ff7ddc20378f8fb01f6fc0bcb"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "7cc660f8d6b8e591bddfac47f956c98e0997430db867d29b24a8fba47462f0aa"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-x64"
    binary "niha-darwin-x64", target: "niha"
  end

  name "niha"
  desc "AI-native governance CLI for development teams"
  homepage "https://nihaandco.com"
end
