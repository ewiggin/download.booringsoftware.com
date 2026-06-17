# download.booringsoftware.com

Static download page for **RollerAdmin** — a desktop app for managing turns and activities in special campaigns.

## Structure

```
index.html        # Download page (Tailwind CSS, dark mode, changelog)
public/           # Built binaries — committed and uploaded to GitHub Releases
release.sh        # Script to tag and publish a new GitHub Release
version.txt       # Current release tag (e.g. desktop-v0.2.4)
```

## Publishing a new release

1. Build the three binaries and drop them in `public/`:
   - `Roller.Admin_<version>_amd64.AppImage` (Ubuntu / Linux x64)
   - `Roller.Admin_<version>_aarch64.dmg` (macOS Apple Silicon)
   - `Roller.Admin_<version>_x64_en-US.msi` (Windows 10/11)

2. Update `version.txt` with the new version number (e.g. `0.2.5`).

3. Update `index.html`: bump the version tag, date, download URLs, and changelog entries.

4. Run the release script:
   ```bash
   ./release.sh            # uses version from version.txt
   ./release.sh 0.2.5      # or pass the version explicitly
   ```
   This creates a GitHub Release tagged `desktop-v<version>` and uploads the three binaries.

5. Commit and push `index.html` and `version.txt`.

## Download URLs

Binaries are served via GitHub Releases:
```
https://github.com/ewiggin/download.booringsoftware.com/releases/download/<tag>/<file>
```
