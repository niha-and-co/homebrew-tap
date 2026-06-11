cask "niha" do
  version "0.11.4"

  on_arm do
    sha256 "0bb49a7f9495bc7a06f709bae4ac1a52660db510f4e13b839b84a586c0e9c457"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "d2c6ed039634f1dc505613abf7b99561d87ea4d0f77b5a6fec2b85c9600e830a"
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
