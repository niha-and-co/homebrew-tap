cask "niha" do
  version "1.3.0"

  on_arm do
    sha256 "7504a09b4852f4c87c313dd86ca42162931d9fb32ec722b46fed01cd7b4d9362"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "a39a03a63023ad7fd4333fb2ce2a17ce174954ca6353b5d36acd2ffec12fc97b"
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
