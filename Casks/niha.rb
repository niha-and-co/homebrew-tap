cask "niha" do
  version "0.10.2"

  on_arm do
    sha256 "ac5e1463844ad3ea30498de7ed676067f42ea7fb520319f73ad06eb75a1592da"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "0cb6d2b03452ed5a8c1b73b9eee82b52554d93b498211ad62379a2f704c26810"
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
