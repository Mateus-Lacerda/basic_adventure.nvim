# BasicAdventure.nvim

BasicAdventure.nvim é um plugin para Neovim que permite jogar um jogo de aventura diretamente no editor. Feito em Python.

## Requisitos

- **Python 3.10 ou superior**: Certifique-se de que o Python está instalado no seu sistema.
- **Pygame**: O plugin requer o Pygame instalado no ambiente Python global ou em uma virtual environment (venv). Você pode instalar o Pygame com o comando:

```bash
pip install pygame
```

> **Nota**: Se você estiver usando uma venv, certifique-se de abrir o Neovim dentro dela para que o Pygame seja detectado corretamente.

## Instalação

### Usando [packer.nvim](https://github.com/wbthomason/packer.nvim)

Adicione o seguinte bloco ao seu arquivo de configuração do Neovim:

```lua
use {
    'Mateus-Lacerda/basic_adventure.nvim',
    config = function()
        require('basic_adventure')
    end
}
```

Após adicionar, execute `:PackerSync` no Neovim para instalar o plugin.

### Usando [lazy.nvim](https://github.com/folke/lazy.nvim)

Adicione o seguinte bloco ao seu arquivo de configuração do Neovim:

```lua
{
    'Mateus-Lacerda/basic_adventure.nvim',
    config = function()
        require('basic_adventure')
    end
}
```

Após adicionar, execute `:Lazy sync` no Neovim para instalar o plugin.

## Como usar

Após instalar o plugin, você pode iniciar o jogo com o comando:

```vim
:BasicAdventure
```

Certifique-se de que o Pygame está instalado e acessível no ambiente Python que o Neovim está utilizando.

## Contribuições

Por favor, sinta-se à vontade para abrir issues ou pull requests no repositório. Todas as contribuições são bem-vindas!
