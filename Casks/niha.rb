cask "niha" do
  version "0.8.0"

  on_arm do
    sha256 "faf26a680bfcd96bcdfd5a33fe32de2578e4f943c806e4db873f6e018210b571"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "b38d5180f2043ba4065e0158bbfc8cdf3d43a5c123a7015eb930f8e42be179d1"
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
