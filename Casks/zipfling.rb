cask "zipfling" do
  version "1.0.3"
  sha256 "7c5bfa8d7ed688213e2d067bdf91b4d1b19308d5270f45573633b2e722908bf4"

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
