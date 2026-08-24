cask "niha" do
  version "1.3.3"

  on_arm do
    sha256 "7e670f28c6db616671c4ab10171bbcb0cda042d113c18621c63d42aefd56d20e"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "4a4efc0b4b9b987f8c08f34ad97c3cace2b5c7b4b945a9fad3889050785fc218"
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
