function ks --wraps='kubectl get services' --description 'alias ks=kubectl get services'
  kubectl get services $argv; 
end
