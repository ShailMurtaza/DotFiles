conky.config = {
	--xinerama_head = 1,

	double_buffer = true,
	no_buffers = true,
	text_buffer_size = 2048,
	alignment = 'top_middle',
	gap_x = -1320,
	gap_y = 125,
	--minimum_width = 550, minimum_height = 550,
	--maximum_width = 550,
	own_window = true,
	own_window_type = 'normal',
	own_window_transparent = true,
	own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager',
	own_window_argb_visual = true,
	own_window_argb_value = 0,

	border_inner_margin = 0,
	border_outer_margin = 0,


	draw_shades = false,
	draw_outline = false,
	draw_borders = false,
	draw_graph_borders = false,
	default_shade_color = '#112422',

	override_utf8_locale = true,
	use_xft = true,
	font = 'Feena Casual:size=10',
	xftalpha = 1,
	uppercase = true,

	default_color = '#D6D5D4',
--E87E3C
	own_window_colour = '#000000',
	own_window = true,
	own_window_class =  "conky",
	own_window_type = "override",
};

conky.text = [[
${font Anurati:size=75}${alignc}${color D6D5D4}${time %A}#${color yellow}

${color #ffffff}${voffset -80}${alignc}${font Chilanka Regular:size=15} ${time %d %B %Y}

${color #ffffff}${voffset -20}${alignc}${font Chilanka Regular:pixelsize=20}${time - %I:%M %p -}

]];
