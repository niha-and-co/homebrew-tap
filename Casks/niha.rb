cask "niha" do
  version "1.3.7"

  on_arm do
    sha256 "b7e72ef4a4823c6a11f76af3283fe1296bf38f3ee0968747f4e8e60eff28ff3f"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "6279d3c8cc59ee68171dfeefad0ebde86cf5cf86a39df58b9a67b9778c73376f"
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
