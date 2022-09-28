function vimlog --wraps='rm vim.log && nvim --startuptime vim.log' --description 'alias vimlog rm vim.log && nvim --startuptime vim.log'
  rm vim.log && nvim --startuptime vim.log $argv; 
end
