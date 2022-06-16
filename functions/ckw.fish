function ckw --wraps='clj -M:test-kaocha --watch' --description 'alias ckw=clj -M:test-kaocha --watch'
  clj -M:test-kaocha --watch $argv; 
end
