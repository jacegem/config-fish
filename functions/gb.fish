function gb --wraps='git branch' --description 'alias gb=git branch'
  git checkout -b $argv;
end
