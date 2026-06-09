cask "niha" do
  version "0.10.8"

  on_arm do
    sha256 "fe98a808aa25c22420a91f8a79e7fcd8656ace286dc1f8144b961580bd7213f4"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "aa797f36216f8265b4e5e7deeacd9e8728bfb55646f658ddac6141c748bef391"
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
