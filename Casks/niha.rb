cask "niha" do
  version "0.10.6"

  on_arm do
    sha256 "1af06bd712c9702c21f6ea44ae808cedfada7d5aca12bfef6e74cfb019b728f3"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "02bd36d52e3af47372bd83e1bf0ef80a4ce55345a5b03fb89bfd9a3779c3a71b"
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
