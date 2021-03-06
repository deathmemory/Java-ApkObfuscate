call run_clean.bat

call dex2jar\d2j-dex2jar -d -o classes.jar -f %1

call dex2jar\d2j-jar2dex -o classes.dex -f classes.jar


copy %1 dex.zip

7z\7z u dex.zip classes.dex

ren dex.zip dex.apk

call dex2jar\d2j-apk-sign -o dex_sign.apk -f dex.apk

adb install dex_sign.apk

pause