function cn --wraps='cd && cd .config/nvim/lua' --wraps='cd && cd .config/nvim' --wraps='cd && cd .config/nvim && nvim' --description 'alias cn cd && cd .config/nvim && nvim'
  cd && cd .config/nvim && nvim $argv; 
end
