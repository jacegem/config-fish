function sdpp --wraps='sls deploy --aws-profile platform --stage prod' --description 'alias sdpp=sls deploy --aws-profile platform --stage prod'
  sls deploy --aws-profile platform --stage prod $argv; 
end
