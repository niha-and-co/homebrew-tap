cask "niha" do
  version "1.4.1"

  on_arm do
    sha256 "dd1b4310adf73ae035f1b927f7524f9324ab62d63a833fb89e36ec6b6a3f51bd"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "04453b9c8cf1e61e99828a8bc9b62ea00e396410002905cd02eab62cd24b5458"
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
