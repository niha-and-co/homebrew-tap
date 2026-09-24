cask "niha" do
  version "1.3.8"

  on_arm do
    sha256 "f2fb2223b69325ec8a7f06a9f50b69ecadab794df5ad954f9745536cec1a5bbf"
    url "https://cli.nihaandco.com/releases/#{version}/niha-darwin-arm64"
    binary "niha-darwin-arm64", target: "niha"
  end

  on_intel do
    sha256 "0c8501b8cafc7a3021df1fb291ac12612688caa0c67f2752208e1f021b030fb2"
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
