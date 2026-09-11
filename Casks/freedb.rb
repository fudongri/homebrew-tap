cask "freedb" do
  version "1.1.12"
  sha256 "87b3044109eb5a7d298c770a406da416e4af343f9d33193b14fb31d938c0543b"

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
