cask "niha" do
  version "0.6.2"

  on_arm do
    sha256 "6ff358fad3577d0910fa8142be6610ee086aeda813012b1059919ef80a3a5e9a"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "f3c7bc0884c5e0782f2db25076ef80b8ae66466af870bd3883a5e5984010c249"
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
