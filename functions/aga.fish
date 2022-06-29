function aga --wraps=aws-google-auth --description 'alias aga=aws-google-auth'
    vault kv get -field=param secret/aws-google-auth | read param
    eval "aws-google-auth $param"
end
