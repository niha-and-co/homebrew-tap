cask "niha" do
  version "0.11.6"

  on_arm do
    sha256 "9c6e37657c106626c68b914b5920566a78620430bd575e5bb86d72bc7ab4fca1"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "051639ccea4924c0b7fc3f6580a12c3b302728e117ccce72036fcc944d509096"
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
