# nvim
Shared neovim setting file and useful plugins

# Terms
## neovim
Extention of vim with modern terminal features such as cursor styling, truecolor and bracketed paste.
## dein.vim
Plugin manager (install listed plugins). Substitution of neobundle.vim.
## dein.toml & dein\_lazy.toml
Plugins list

# How to add plugins
'''dein.toml
[[plugins]]
repo = 'here/is/a/repo'
'''
'''vim
:call dein#check\_install()
'''

# references 
http://qiita.com/okamos/items/2259d5c770d51b88d75b.

# Environment

Most of useful neovim plugins requires python3.

`
pyenv local python3.x.x
pip install neovim
`

Rewrite init.vim

`
let g:python3_host_prog = expand('~/.pyenv/shims/python3')
`

# Ricty: font for Development
`cp -f /fonts/Ricty*.ttf ~/Library/Fonts/`
`fc-cache -vf`

## if prefer manually install
- install xquarts

`brew cask install xquartz`

- install fontforge

`brew install --use-gcc fontforge`

- install Ricty

`brew tap sanemat/font`

- copy to font folder (Mac OS)

`cp -f /usr/local/Cellar/ricty/4.0.1/share/fonts/Ricty*.ttf ~/Library/Fonts/`

`fc-cache -vf`

# Trouble Shooting
- Message: "Cannot find colorscheme xxx". Cause: dein cash unupdated.
'''
:call dein#recache\_runtimepath()
'''

