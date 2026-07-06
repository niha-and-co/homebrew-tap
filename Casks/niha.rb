cask "niha" do
  version "1.0.4"

  on_arm do
    sha256 "90fdd7b51c06ac61c73a51d07d92570b9647f9e58f62c63ba7fa5d97ae814796"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "e60b219a9e2e9b9eeff1d0622f4b1c83b5eb3ad38d452c4690d7a361ad149b66"
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
