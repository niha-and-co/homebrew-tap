cask "niha" do
  version "0.11.0"

  on_arm do
    sha256 "fcb6f1d7a49244f301f6671d5d40f45608d4301a585cb0e42761844eaca16a32"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "59370ccdbb8f348e994a66211ece357ef1f016565d4d1f3481796cd1202fc7a6"
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
