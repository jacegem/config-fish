function cpa --wraps='clj -T:build uber-serverless :project amiko' --description 'alias cpa=clj -T:build uber-serverless :project amiko'
  clj -T:build uber-serverless :project amiko $argv; 
end
