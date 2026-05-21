cask "niha" do
  version "0.5.4"

  on_arm do
    sha256 "124f69700dcf4f17e375b83dc16ae95ab69277bbc20d7eb7e456f1eb565dd3f1"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "c2e9757676ecd2afc002a44031136432649b7ca100bd68ebcfed9a717dc52c41"
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
