cask "niha" do
  version "1.1.0"

  on_arm do
    sha256 "bb97af17b977d8d2fbc62c9bc586699b99acaef935ce5daf5c08ca6c4b42c8d9"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "0ef0e0f284551f6e6af15c82bee39760500d3dd40f87c923bcfd4eb61f072462"
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
