cask "niha" do
  version "0.10.5"

  on_arm do
    sha256 "03cda58e413200b89c4698c6cf1333f96a53ad63b88eb9a31d9909a1d8da4748"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "4bb30a7a04a55fa42648551749db72e6e6970790d806038ee623aa49520c4caf"
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
