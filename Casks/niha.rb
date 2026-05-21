cask "niha" do
  version "0.5.5"

  on_arm do
    sha256 "66f4d8d130dc0bd4f264e627282fe278e5c3d74ab5135dc5c4ae1d254d7bb0e4"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "aaf3b6c484bc8ae47a1d302a9adc8b9367cd23d288a2baeac17b57a7c1f8fadb"
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
