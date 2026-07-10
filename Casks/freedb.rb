cask "freedb" do
  version "1.0.5"
  sha256 "d6993e4389161051b4aca88fbee5c9fc944cffd693137796381dbc0a02180acf"

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
