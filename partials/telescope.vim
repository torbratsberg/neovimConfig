lua << EOF

require('telescope').setup{
    defaults = {
	prompt_position = "bottom",
	layout_defaults = {
	    horizontal = {
		mirror = "true"
	    }
	}
    }
}

EOF
