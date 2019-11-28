# Defined in - @ line 1
function gs
	git diff-tree --no-commit-id --name-only -r $argv
end
