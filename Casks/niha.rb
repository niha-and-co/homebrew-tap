cask "niha" do
  version "0.11.3"

  on_arm do
    sha256 "fa8b5214442870220a65d269307543600325f54117f79a3de7afd8403ec99cbd"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "e0959c6916887712b2b1ad2fd8255657faac65a1fb76d5a17fffcc3693d1922c"
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
