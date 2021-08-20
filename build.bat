cd "BlackMart"
gradlew.bat assembleRelease
java.exe -jar "signer\ApkSigner.jar" sign --key "signer\apkeasytool.pk8" --cert "signer\apkeasytool.pem"  --v4-signing-enabled false --out "%cd%/build/outputs/apk/release/rafel_rat_signed.apk" "%cd%/build/outputs/apk/release/app-release-unsigned.apk"
