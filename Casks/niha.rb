cask "niha" do
  version "1.3.5"

  on_arm do
    sha256 "7f37e78cdabd1631feab7f46fd5dc3e230bdbb70b2e276bc475e713b0f5b5239"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "c4960ef463fd6d6ca26e14b514ffbf858ead17b50fe6e0a00ba0ad3adcb8e92d"
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
