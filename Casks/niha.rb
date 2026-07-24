cask "niha" do
  version "1.2.0"

  on_arm do
    sha256 "5a81d7a97f256af90c8d4d22929f01f214831f858b6f95266e7bdcdf442bd87c"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "4f191ac1e1e5bdae06b55d704d264ff31a4e400a4f7ba2a285e17fc1d0a567ff"
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
