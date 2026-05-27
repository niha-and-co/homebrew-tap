cask "niha" do
  version "0.9.0"

  on_arm do
    sha256 "7fd8b18448963be4e50b094d1b818307d8704c6f551429a22080c9cc3c67f53b"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "e241f8c8127fef626fc9fe7485608001e34f6b5a8851c6a033106b07caccdb15"
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
