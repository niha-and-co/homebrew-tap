cask "niha" do
  version "1.4.0"

  on_arm do
    sha256 "4b540228ce38f3e13f73e9b963c9777d263f3cd6d00fe58f08afb98996575104"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "5bab7aae90dd2dd89fa86ed0b525459ffea5f8e16a8f7371b84a5873c158cdc0"
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
