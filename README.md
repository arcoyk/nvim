# nvim
Shared neovim setting file and useful plugins

# references 
http://qiita.com/okamos/items/2259d5c770d51b88d75b.

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
