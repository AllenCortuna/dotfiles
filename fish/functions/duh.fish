function duh --wraps='du -ha | sort -k1hr | head -n' --description 'alias duh du -ha | sort -k1hr | head -n'
  du -ha | sort -k1hr | head -n $argv; 
end
