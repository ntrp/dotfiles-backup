# Defined in /tmp/fish.gOGsBU/preview_file.fish @ line 2
function preview_file
	set -l mime (file --mime $argv[1])
  if string match -q '*binary' -- $mime
    echo 'The selected file is a binary'
  else 
    rougify $argv[1] || cat $argv[1]
  end
end
