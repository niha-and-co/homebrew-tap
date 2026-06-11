cask "niha" do
  version "0.11.7"

  on_arm do
    sha256 "c1fc6a5fe7aa0b4fc069ae643e43cfee88d112203d2904aabfc464d9242a52ce"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "71a07f970d08043364e22059c6df6092ecbe365d10c3b8024b770128bfb29618"
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
