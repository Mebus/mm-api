IF EXIST distrib (
	pushd .
	cd distrib
        rmdir /S /Q csharp
	popd
)

pushd .
cd build
call build_csharp_vs2015.bat
call make_package_csharp.bat
popd
