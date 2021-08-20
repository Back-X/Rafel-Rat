cd "BlackMart"

dir "app"
dir "app/build"
dir "build"
dir "app/build/outputs"

java.exe -jar "signer\ApkSigner.jar" sign --key "signer\apkeasytool.pk8" --cert "signer\apkeasytool.pem"  --v4-signing-enabled false --out "%cd%/app/build/outputs/apk/release/rafel_rat_signed.apk" "%cd%/app/build/outputs/apk/release/app-release-unsigned.apk"
