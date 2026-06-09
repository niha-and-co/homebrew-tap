cask "niha" do
  version "0.10.4"

  on_arm do
    sha256 "b0d45dcafcc93b5f8c04d678e28a3cd6a19031a55527e264869cbf7bcfa696ae"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "e64b64510b5014a73fdc37785cf30a61eee5cebecd4c821cdfc76819469e1a55"
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
