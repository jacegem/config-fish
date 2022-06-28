function pt --wraps=pytest --wraps='poetry run pytest' --wraps='poly test' --description 'alias pt=poly test'
  poly test $argv; 
end
