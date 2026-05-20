cask "niha" do
  version "0.5.0"

  on_arm do
    sha256 "bf507179332f557fd24622a674f9b9d5555f71a637fbbc6dc5b2f6846ec1da34"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "fd4a7f7fd02dcaf21d82e5dc4fe9df14266ed1adbcd1f1f2c73fb7fc96b5d38c"
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
