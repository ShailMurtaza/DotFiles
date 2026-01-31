conky.config = {
	-- xinerama_head = 2,

	double_buffer = true,
	no_buffers = true,
	text_buffer_size = 2048,
	alignment = 'top_middle',
	-- gap_x = -1366,
	-- gap_x = 341,
	gap_y = 50,
	--minimum_width = 550, minimum_height = 550,
	--maximum_width = 550,
	own_window = true,
	own_window_type = "override",
	own_window_transparent = true,
	own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager',
	own_window_argb_visual = true,
	own_window_argb_value = 0,
	own_window_colour = '#000000',
	own_window_class =  "conky",

	border_inner_margin = 0,
	border_outer_margin = 0,


	draw_shades = false,
	draw_outline = true,
	draw_borders = false,
	draw_graph_borders = false,
	default_shade_color = '#000000',
    default_outline_color = '#2DFDD2',

	override_utf8_locale = true,
	use_xft = true,
	font = 'Feena Casual:size=10',
	xftalpha = 1,
	uppercase = true,

	default_color = '#D6D5D4',
--E87E3C
};

local font_time = "valkocapela"
-- local font_time = "ethnocentric"
local color_time = "000000"
local font_day = "Anurati"
local color_day = "000000"

conky.text = string.format([[
${color #%s}${alignc}${font %s:size=75}${time %%A}

${color #%s}${voffset -180}${alignc}${font %s:size=15}${time %%d %%B %%Y}

${color #%s}${voffset -20}${alignc}${font %s:pixelsize=20}${time - %%I:%%M %%p -}

]], color_day, font_day, color_time, font_time, color_time, font_time, "ethnocentric");


-- ${font %s:size=65}${color D6D5D4}${voffset 050}${alignc}THE SHAIL SHOW#${color yellow}
