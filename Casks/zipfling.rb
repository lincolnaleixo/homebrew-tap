cask "zipfling" do
  version "1.0.11"
  sha256 "ccf7b766cfbb54c99b9d8c276031cde55775da84ecfd38de380aedb66804e8c2"

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
