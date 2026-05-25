cask "niha" do
  version "0.7.0"

  on_arm do
    sha256 "8d2e46440a07e34594054eef8e58988b5d5c65ef706dd9fad44df705618f3f24"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "2e0daabeb1a1a9917d8a1fe1c4593f3611662f6fe3bfb594b7d29a4bad15a3f8"
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
