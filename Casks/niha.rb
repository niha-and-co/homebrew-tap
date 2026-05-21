cask "niha" do
  version "0.5.3"

  on_arm do
    sha256 "9ff3eac5b9aa2a9db0f29057e8ed5c49885d7f98fdd130029137804c5a6acefa"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "9d2a17cb869cd4444a7991e465c55c1ea212c573ffa596def0798b43849ed68d"
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
