@echo off

REM Array of repositories
set "yce_repos=ulc nlc thermuino yce_common phyton pyholder AsyncTCP ESPAsyncTCP ESPAsyncWebServer Arduino-Temperature-Control-Library Adafruit_BusIO Adafruit_SSD1306 Adafruit-GFX-Library"

REM Loop through each repository
for %%i in (%yce_repos%) do (
    cd %%i
    git checkout master
    git pull
    cd ..
    git add %%i
)

git commit -m "Updated submodules to latest heads."
git push