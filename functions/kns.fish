function kns --wraps='kubectl get ns' --description 'alias kns=kubectl get ns'
  kubectl get ns $argv; 
end
