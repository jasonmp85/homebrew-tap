cask "paraeq" do
  version "2.3.0"
  sha256 "89771c8d63a5e771797016db334d7468c4c6cbf5f0a57eb1ed2c80ae64415fe5"

  url "https://github.com/wabsto1/ParaEQ/releases/download/v#{version}/ParaEQ.zip"
  name "ParaEQ"
  desc "System-wide parametric equaliser"
  homepage "https://github.com/wabsto1/ParaEQ"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "ParaEQ.app"

  uninstall quit: "com.paraeq.app"

  zap trash: [
    "~/Library/Caches/com.paraeq.app",
    "~/Library/HTTPStorages/com.paraeq.app",
    "~/Library/Logs/ParaEQ.log",
    "~/Library/Preferences/com.paraeq.app.plist",
  ]
end
