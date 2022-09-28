function update --wraps='apt-update && aapt-upgrade' --wraps='apt-update && apt-upgrade' --wraps='apt update && apt upgrade' --description 'alias update apt update && apt upgrade'
  apt update && apt upgrade $argv; 
end
