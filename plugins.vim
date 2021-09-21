call plug#begin('~/.vim/plugged')																			"		      Plugins.

  Plug 'dbeniamine/cheat.sh-vim'																	    	"        Programming help.
  Plug 'unblevable/quick-scope'																			    "    Highlight characters.
  Plug 'Vimjas/vim-python-pep8-indent'																  "      Python indentation.
  Plug 'markonm/traces.vim'																					    "           Highlight :s/.
  Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) }}      "         nvim in browser.
  Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}								  "	     Better TeX conceal.
  Plug 'francoiscabrol/ranger.vim'																		  " 		      File explorer.
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'																					    " 	        More snippets.
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }								    " 	  Fuzzyfinder support.
  Plug 'junegunn/fzf.vim'																						    " 	  Fuzzyfinder support.
  Plug 'junegunn/goyo.vim'																						  " 	         Reading mode.
  Plug 'junegunn/limelight.vim'																			    "     disable Ui elements.
  Plug 'lervag/vimtex'																								  " 			            LaTeX.
  Plug 'machakann/vim-highlightedyank'																  " 	       Highlight yank.
  Plug 'matze/vim-move'																							    "   Use ctrl+hjkl on text.
  Plug 'mbbill/undotree'																							  " 	          Better undo.
  Plug 'neoclide/coc.nvim', {'branch': 'release'}										    " 	           Completion.
  Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}	  " 	           Completion.
  Plug 'sheerun/vim-polyglot'																			      "    Syntax for languages.
  Plug 'tpope/vim-commentary'																			    " 	    Better commenting.
  " Plug 'preservim/nerdcommenter'                                        " More advanced commenting
  Plug 'tpope/vim-fugitive'													    						    " 	      git integration.
  Plug 'tpope/vim-repeat'														    						    " 	     Extend . command.
  Plug 'tpope/vim-speeddating'												  							  " 	Extend <C-a> to dates.
  Plug 'tpope/vim-surround'													      					    " 	   Change Parentheses.
  Plug 'vim-syntastic/syntastic'																			  " 	  Syntax Highlighting.
  Plug 'dominikduda/vim_current_word'
  Plug 'easymotion/vim-easymotion'                                      "      Additional motions.
  Plug 'machakann/vim-swap'           													        "      Function arguments.
  Plug 'mhinz/vim-startify'																			        "              Start menu.
  Plug 'preservim/nerdtree'																			        "                Filetree.
  Plug 'itchyny/lightline.vim'																				  "              Statusline.
  Plug 'wellle/targets.vim'                                             "       Adds text objects.

  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'ThePrimeagen/harpoon'

  Plug 'altercation/vim-colors-solarized'
  Plug 'morhetz/gruvbox'
  Plug 'sainnhe/gruvbox-material'
  Plug 'colepeters/spacemacs-theme.vim'
  Plug 'rafi/awesome-vim-colorschemes'
  Plug 'ayu-theme/ayu-vim'
  Plug 'drewtempelmeyer/palenight.vim'
Plug 'shinchu/lightline-gruvbox.vim'
call plug#end()
