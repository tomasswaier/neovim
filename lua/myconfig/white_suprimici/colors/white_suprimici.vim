

set background=dark
let g:colors_name="white_suprimici"

" By setting our module to nil, we clear lua's cache,
" which means the require ahead will *always* occur.
"
" This isn't strictly required but it can be a useful trick if you are
" incrementally editing your confit a lot and want to be sure your themes
" changes are being picked up without restarting neovim.
"
" Note if you're working in on your theme and have lush.ify'd the buffer,
" your changes will be applied with our without the following line.
lua package.loaded['lush_theme.white_suprimici'] = nil

lua << EOF
  local bang
  bang = function()
    package.loaded['lush_theme.white_suprimici'] = nil

    require('lush')(require('lush_theme.white_suprimici'))

    vim.defer_fn(bang, 500)
  end
  vim.defer_fn(bang, 500)
EOF
