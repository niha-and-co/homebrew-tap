cask "niha" do
  version "1.0.2"

  on_arm do
    sha256 "cd5184a14d35ed10f5712a030d06865a114a5af697776ba2c378ca154231d26c"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "752ce65531bbb07536e49b2a2422c4fae97c723423d9e73baa65ba4e99c4b1a1"
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
