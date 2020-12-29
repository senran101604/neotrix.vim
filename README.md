# neotrix.vim
💚A  nice dark colorscheme for Vim and Neovim😃

This colorscheme is totally not finish and I recommend using the gui of vim or nvim or add the following to your `init.vim` or `.vimrc`:
 ```vim
  syntax on
  colorscheme neotrix
  set termguicolors
  ```


## TODOS
* Add support for other plugins like airline
* Add support for some programming language.
* Screenshots
* Refractor the code
* Ensure support for terminals

## Screenshots
### neotrix-retro
![alt-text](https://github.com/senran101604/neotrix.vim/blob/main/screencaps/neotrix-retro.png)

### neotrix-retro_hard
![alt-text](https://github.com/senran101604/neotrix.vim/blob/main/screencaps/neotrix-retro_hard.png)

### neotrix-hard
![alt-text](https://github.com/senran101604/neotrix.vim/blob/main/screencaps/neotrix-dark.png)

### neotrix-medium
![alt-text](https://github.com/senran101604/neotrix.vim/blob/main/screencaps/neotrix-medium.png)


## Contrast Options with a default value
```vim
let g:neotrix_dark_contrast = "galaxy_medium"
```
* Possible values are: `galaxy_medium`, `galaxy_hard`, `retro`, and `retro_hard`

## Installation
1.You can use your favorite plugin manager or manually place it in `colors/neotrix.vim` directory in  `~/.vim/colors`.  
np: make sure to specify the branch name to `main` since it is not using master branch anymore.
- Vim Plug:
`Plug 'senran101604/neotrix.vim', {'branch': 'main'}`

## Contributing
I like help. If you want to make some changes feel free to open up a pull request and I'll gladly merge it.😃


