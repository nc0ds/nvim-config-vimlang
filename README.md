# nvim-config-vimlang
This is my Neovim config using the Vim Language file (init.vim)

## Important notes
To this config, I am using [https://github.com/junegunn/vim-plug](Vim Plug) to manage all plugins and [https://github.com/neoclide/coc.nvim](Conquer of Completion) to work with autocompletion and some aditional plugins

## Coquer of Completion
By the way, I am using a list of aditional plugins with CoC and that is:

- coc-prettier
- coc-jest
- coc-pairs
- coc-html
- coc-highlight
- coc-json
- coc-tsserver
- coc-css

All these aditionals can be install using `:CocInstall coc-prettier coc-jest coc-pairs coc-html coc-highlight coc-json coc-tsserver coc-css`

## coc-prettier config
Now, we just need to set the Prettier global config file inside `:CocConfig` pasting the following code:

~~~json
{
    "coc.preferences.formatOnSave": [
        "javascript",
        "javascriptreact",
        "jsx",
        "typescript",
        "typescriptreact",
        "tsx",
        "json",
        "graphql"
    ],
    "prettier.tabWidth": 2,
    "prettier.useTabs": true,
    "prettier.semi": true,
    "prettier.singleQuote": true,
    "prettier.trailingComma": "es5",
    "prettier.arrowParens": "always",
    "prettier.bracketSameLine": true,
    "prettier.printWidth": 80,
}
~~~