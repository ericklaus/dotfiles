function gfc --description "gofmt all changed files"
	# This block will produce duplicate filenames during some merge scenarios. 
	# We could `sort | uniq` them, but this adds runtime to every execution.
	# Instead we will just run gofmt multiple times on those files and be slower in the merge case.
	begin
		git diff -z --name-only --diff-filter=AM
		git diff -z --name-only --staged --diff-filter=AM
		git ls-files -z --other --exclude-standard
	end | rg --null-data -0 '.go$' | rg --null-data -0 -v 'vendor/' | xargs -0 -n 1 gofmt -w
end
