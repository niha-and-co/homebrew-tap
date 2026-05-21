cask "niha" do
  version "0.6.1"

  on_arm do
    sha256 "5a3d677404090c7afea9a427a3df2a70328dc36148c16c8a429e266d129144fe"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "f1f5a1d9fad880026d5138dcf0ecb267b2508908f31c9d80ab8ee0d12c78968c"
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
