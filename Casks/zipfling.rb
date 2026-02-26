cask "zipfling" do
  version "1.0.10"
  sha256 "a5a2b47a4f62858137ee2b353b88877a17f820ba4a0672af8081efc2492c55ec"

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
