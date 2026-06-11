cask "niha" do
  version "0.11.5"

  on_arm do
    sha256 "4dee53177631a14b909b07a9a9112228fcd4af65041e25fc5383c2c236a0fd9b"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "123e9eb6ed0d2e0bd248722a0c55ba4a3919bb9e2010355851ba10e66a4f77ae"
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
