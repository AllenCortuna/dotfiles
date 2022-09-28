function backup --wraps='tar -zcf /sdcard/termux-backup.tar.gz -C /data/data/com.termux/files ./home ./usr' --description 'alias backup tar -zcf /sdcard/termux-backup.tar.gz -C /data/data/com.termux/files ./home ./usr'
  tar -zcf /sdcard/termux-backup.tar.gz -C /data/data/com.termux/files ./home ./usr $argv; 
end
