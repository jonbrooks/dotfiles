
# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.


#Get the path to this file (following symlinks)
#http://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
SOURCE="${(%):-%N}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

#now load all the scripts in the system filder
for file in "$DIR"/system/*; do
  #echo "Loading $file"
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit

#initialize rbenv, which sets ruby to be the one set by rbenv (currently 2.7.x)
eval "$(rbenv init -)"

#alias adi="aws-vault exec default"
#alias acv="aws-vault exec prod"