cask "niha" do
  version "1.0.3"

  on_arm do
    sha256 "e166be5ae8b245b58459a54dd095daa1e27a4f76e2eefdb08a0950dc57469d36"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "52b0b1ab536326eb6547ca02604b5b6274f6091ddeea910caf9b8fd0ea822b36"
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
