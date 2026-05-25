cask "niha" do
  version "0.8.2"

  on_arm do
    sha256 "f178860b4e47352142a2889d9d97271d7cfbe58251f2a0c0465a72fed7ff3a74"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "c3f2489987f4ee0a434ab8c1e0c2be27e7c4bf7328c85b0e7aa313696164bbb8"
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
