cask "niha" do
  version "1.3.4"

  on_arm do
    sha256 "bc10a31666cebf4f0ca258de557934791f7dd80838c4ec341667e607f260bf28"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "79243c2e0afa921180adcc0ab2bb628c33a5b8dec7e43297ca75159d8fd63ef1"
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
