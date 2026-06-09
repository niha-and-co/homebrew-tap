cask "niha" do
  version "0.10.3"

  on_arm do
    sha256 "6c07429e57208f075928e87da79f111c2c5766d6d8f0f97c19f268bda893fe4a"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "fbe8ed843f419a04856e6ffea2e2976a73670b2678c7c199a7e7464cf27acba8"
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
