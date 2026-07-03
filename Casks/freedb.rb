cask "freedb" do
  version "0.1.1"
  sha256 "9d83d2c32c11fc3aa5771f8d546e210e01fb03d6e73cf80c421d83c0430055fe"

  url "https://github.com/fudongri/freeDB/releases/download/#{version}/FreeDB.dmg"
  name "FreeDB"
  desc "Lightweight cross-platform database client for MySQL & PostgreSQL"
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
