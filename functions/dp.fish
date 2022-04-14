function dp --wraps='docker ps' --description 'alias dp=docker ps'
  docker ps $argv; 
end
