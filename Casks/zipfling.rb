cask "zipfling" do
  version "1.0.5"
  sha256 "a800d17b9706cf8d66dd567271d9b6edac30e615e7ab25ccc8c4c4af36b071e8"

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
