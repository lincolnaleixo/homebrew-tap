cask "zipfling" do
  version "1.0.4"
  sha256 "96b6f661646a86c122e321c77eb8266b279e939bbee9cf0693c66ba4fbdbe70e"

  url "https://github.com/lincolnaleixo/zipfling-dist/releases/download/v#{version}/ZipFling-v#{version}.zip"
  name "ZipFling"
  desc "Menu bar app for uploading files to S3-compatible storage"
  homepage "https://zipfiling.bealsa.com"

  depends_on macos: ">= :sonoma"

  app "ZipFling.app"

  zap trash: [
    "~/Library/Application Support/com.lincolnaleixo.ZipFling",
    "~/Library/Preferences/com.lincolnaleixo.ZipFling.plist",
    "~/Library/Caches/com.lincolnaleixo.ZipFling",
  ]
end
