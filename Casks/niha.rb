cask "niha" do
  version "0.11.1"

  on_arm do
    sha256 "0c24093e569a0b94da4a12e6035a0517e6a69ba1db9454fd234e814bd9d57928"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "49a7cf50aac02903be67ae6d0663532592270c92db4035704f54d895433e778a"
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
