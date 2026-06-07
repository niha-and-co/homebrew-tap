cask "niha" do
  version "0.10.0"

  on_arm do
    sha256 "a52fd9868f4337b6e5242cdda169d302a9737559b5011b067ece7cfc609ed6e1"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "e74f5c70bb51eeb43c0e30417bba820fbfaaa9f8ba6d963c4c10f65c07789efb"
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
