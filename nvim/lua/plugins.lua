return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use "savq/melange-nvim"
	use 'Shatur/neovim-ayu'
    use 'sainnhe/sonokai'
    use 'ray-x/aurora'
    use "Alexis12119/dull.nvim" 
    use "cpea2506/one_monokai.nvim"    

    use 'tanvirtin/monokai.nvim'

    use { "windwp/nvim-autopairs" }

	use { 'kartikp10/noctis.nvim', requires = { 'rktjmp/lush.nvim' } }
	use 'Yazeed1s/oh-lucy.nvim'


	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	use 'nvim-treesitter/playground'

	use 'ThePrimeagen/harpoon'

	use "mbbill/undotree"

	use "tpope/vim-fugitive"
      
    use 'Olical/conjure'

    use {'nvim-orgmode/orgmode', config = function()
        require('orgmode').setup()

        require('orgmode').setup_ts_grammar()

        require('nvim-treesitter.configs').setup {
            -- If TS highlights are not enabled at all, or disabled via `disable` prop,
            -- highlighting will fallback to default Vim syntax highlighting
            highlight = {
                enable = true,
                -- Required for spellcheck, some LaTex highlights and
                -- code block highlights that do not have ts grammar
                additional_vim_regex_highlighting = {'org'},
            },
            ensure_installed = {'org'}, -- Or run :TSUpdate org
        }

        require('orgmode').setup({
            org_agenda_files = {'~/org/agenda'},
            org_default_notes_file = '~/org/notes/refile.org',
        })

        end

}
end)
