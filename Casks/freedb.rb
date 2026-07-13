cask "freedb" do
  version "1.1.0"
  sha256 "1e182a2a54e31d92001f8d09c67789465a6d7a39c4f6a2102936f07d21d9d5e2"

  url "https://github.com/fudongri/freeDB/releases/download/#{version}/FreeDB.dmg"
  name "FreeDB"
  desc "Lightweight cross-platform database client for MySQL, PostgreSQL, and MongoDB"
  homepage "https://github.com/fudongri/freeDB"

  app "FreeDB.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{staged_path}/FreeDB.app"]
  end

  zap trash: [
    "~/Library/Application Support/freedb",
    "~/Library/Saved Application State/com.freedb.desktop.savedState",
  ]
end
