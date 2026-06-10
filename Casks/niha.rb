cask "niha" do
  version "0.11.2"

  on_arm do
    sha256 "05386d7c1ceec3829da83773d293a0adac386016e92b83afd8d82130d74e9eaa"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "8d8672148f98e837b47309584cba4d4c1c580e16022899d569c53e1f2d6f3380"
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
