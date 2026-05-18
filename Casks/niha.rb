cask "niha" do
  version "0.4.1"

  on_arm do
    sha256 "ae487a2403a9e1b89c1584053c1f9930169059e1e52ca143c3b840b2b7e536d8"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"

    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "c0443c5426aa05077d8d3e26debd1162a5a4610edea74bf80eea3f8d2b4a17b4"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-x64"

    binary "niha-darwin-x64", target: "niha"
  end

  name "niha"
  desc "AI-native governance CLI for development teams"
  homepage "https://nihaandco.com"
end
