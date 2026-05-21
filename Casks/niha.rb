cask "niha" do
  version "0.5.2"

  on_arm do
    sha256 "509269dfc886dbe633017a0354476f6ce2bf67eb5a516fb77ab04405cb88ef5e"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "0da38a0889c90c26c4f1523b98d498c48c9e83756bd38669d72ae9a81823124b"
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
