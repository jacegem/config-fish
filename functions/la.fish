function la --wraps='eza $EZA_STANDARD_OPTIONS $EZA_LA_OPTIONS $EZA_L_OPTIONS' --description 'alias la eza $EZA_STANDARD_OPTIONS $EZA_LA_OPTIONS $EZA_L_OPTIONS'
  # eza $EZA_STANDARD_OPTIONS $EZA_LA_OPTIONS $EZA_L_OPTIONS $argv
  ls -al $argv
end
