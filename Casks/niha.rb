cask "niha" do
  version "1.0.0"

  on_arm do
    sha256 "935d35f35a7dffcb0e59e28d14ab8f49cbb9fc99e331bd5c067b750e2da85c34"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "3b6385a36cf699013dbafabca96d2c63e81122c86c38ab4ef33ef57584be6d5b"
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
