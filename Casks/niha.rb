cask "niha" do
  version "1.3.2"

  on_arm do
    sha256 "9ad3836faef49762e0eede0dde5c9f5d748278f4de1f7c2f092e87bbb40e7efc"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "2ef43943cff95b9729115cf3cc642867a2bf291679df47a27178668223eb8849"
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
