cask "niha" do
  version "1.3.6"

  on_arm do
    sha256 "eb3df1264d24e7357dfd8fe7a1deda04290453619d87dd372b48e7160be87359"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "446c90e6d87d8d100576ca0d2009a9b7a85d9cf0836d64d6920b578fd71b96a4"
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
