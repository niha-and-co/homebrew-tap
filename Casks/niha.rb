cask "niha" do
  version "0.8.1"

  on_arm do
    sha256 "bbe5795f2518f4c574d47d104d85f4c2b7520c346cb5a05679ddfb61d6013908"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "ca9ff8552e66ccf8c167c95cb5c567f907d9b29e6ee104fd7ed6fd1b72d69a06"
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
