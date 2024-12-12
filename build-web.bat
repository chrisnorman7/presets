@echo off
flutter build web --release --base-href="/presets/" & scp -Cr build\web chris@backstreets.site:presets