cask "niha" do
  version "1.0.1"

  on_arm do
    sha256 "abc8fc9c5367afbc717700d278d2231053c9f88790477eddc20335d4c931703e"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "25403bcb9616630fa13dbe82dd34d22fb69f87f33c8373bb73da13f15ea4e8a9"
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
