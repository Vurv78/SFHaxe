mkdir publish
xcopy /E src publish\src\
copy extraParams.hxml publish
copy haxelib.json publish
copy README.md publish
copy LICENSE.md publish

pause