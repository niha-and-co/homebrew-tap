cask "niha" do
  version "0.11.8"

  on_arm do
    sha256 "20f08cf99ae5857e5ec40fc4701a0451c1f56a7edf80e5319d3ef44e3b41a410"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "1e7989de7b04771f66f851b2a590b24b9d2b73a512e90c784e075cd762166fb2"
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
