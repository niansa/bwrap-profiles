pushd "$( dirname "${BASH_SOURCE[0]}" )" > /dev/null

for profile in profiles/*; do
	alias "bwrap_$(basename "$profile")"="bwrap $(cat "$profile") "
done

for note in notes/*; do
	echo -e -n "Read this if you use the \033[1m$(basename "$note")\033[0m profile: "
	cat "$note"
done

popd > /dev/null
