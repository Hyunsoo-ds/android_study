CLANG="/home/snowball/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/bin/clang"
ARM32="armv7a-linux-androideabi23"
ARM64="aarch64-linux-android23"

parse_arg() {
	out=$1
	in=$2

	if [ -n "$3" ]; then
		arch=$3
	else
		arch="x64"
	fi
}

parse_arg  "$@"

echo "out: $1, input: $2, arch: $arch"

case $arch in
	x64)
		gcc $in -o $out 
		;;
	arm64)
		$CLANG -target $ARM64 $in -o $out
		termux-elf-cleaner --api-level 23 $out
		;;
	arm32)
		$CLANG -target $ARM32 $in -o $out 
		termux-elf-cleaner --api-level 23 $out
		;;
esac

echo "[*] File compiled to $arch"


