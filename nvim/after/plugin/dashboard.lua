local dashboard = require("alpha.themes.dashboard")
local if_nil = vim.F.if_nil

local leader = "SPC"

---@diagnostic disable-next-line: unused-local
local header_comic_blush = {
	[[⡆⣐⢕⢕⢕⢕⢕⢕⢕⢕⠅⢗⢕⢕⢕⢕⢕⢕⢕⠕⠕⢕⢕⢕⢕⢕⢕⢕⢕⢕]],
	[[⢐⢕⢕⢕⢕⢕⣕⢕⢕⠕⠁⢕⢕⢕⢕⢕⢕⢕⢕⠅⡄⢕⢕⢕⢕⢕⢕⢕⢕⢕]],
	[[⢕⢕⢕⢕⢕⠅⢗⢕⠕⣠⠄⣗⢕⢕⠕⢕⢕⢕⠕⢠⣿⠐⢕⢕⢕⠑⢕⢕⠵⢕]],
	[[⢕⢕⢕⢕⠁⢜⠕⢁⣴⣿⡇⢓⢕⢵⢐⢕⢕⠕⢁⣾⢿⣧⠑⢕⢕⠄⢑⢕⠅⢕]],
	[[⢕⢕⠵⢁⠔⢁⣤⣤⣶⣶⣶⡐⣕⢽⠐⢕⠕⣡⣾⣶⣶⣶⣤⡁⢓⢕⠄⢑⢅⢑]],
	[[⠍⣧⠄⣶⣾⣿⣿⣿⣿⣿⣿⣷⣔⢕⢄⢡⣾⣿⣿⣿⣿⣿⣿⣿⣦⡑⢕⢤⠱⢐]],
	[[⢠⢕⠅⣾⣿⠋⢿⣿⣿⣿⠉⣿⣿⣷⣦⣶⣽⣿⣿⠈⣿⣿⣿⣿⠏⢹⣷⣷⡅⢐]],
	[[⣔⢕⢥⢻⣿⡀⠈⠛⠛⠁⢠⣿⣿⣿⣿⣿⣿⣿⣿⡀⠈⠛⠛⠁⠄⣼⣿⣿⡇⢔]],
	[[⢕⢕⢽⢸⢟⢟⢖⢖⢤⣶⡟⢻⣿⡿⠻⣿⣿⡟⢀⣿⣦⢤⢤⢔⢞⢿⢿⣿⠁⢕]],
	[[⢕⢕⠅⣐⢕⢕⢕⢕⢕⣿⣿⡄⠛⢀⣦⠈⠛⢁⣼⣿⢗⢕⢕⢕⢕⢕⢕⡏⣘⢕]],
	[[⢕⢕⠅⢓⣕⣕⣕⣕⣵⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣷⣕⢕⢕⢕⢕⡵⢀⢕⢕]],
	[[⢑⢕⠃⡈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢃⢕⢕⢕]],
	[[⣆⢕⠄⢱⣄⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢁⢕⢕⠕⢁]],
	[[⣿⣦⡀⣿⣿⣷⣶⣬⣍⣛⣛⣛⡛⠿⠿⠿⠛⠛⢛⣛⣉⣭⣤⣂⢜⠕⢑⣡⣴⣿]],
}

---@diagnostic disable-next-line: unused-local
local header_pikachu = {
	[[          ▀████▀▄▄              ▄█ ]],
	[[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
	[[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
	[[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
	[[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
	[[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
	[[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
	[[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
	[[   █   █  █      ▄▄           ▄▀   ]],
}

---@diagnostic disable-next-line: unused-local
local header_pixel_girl = {
	[[    ████▌█████▌█ ████████▐▀██▀    ]],
	[[  ▄█████ █████▌ █ ▀██████▌█▄▄▀▄   ]],
	[[  ▌███▌█ ▐███▌▌  ▄▄ ▌█▌███▐███ ▀  ]],
	[[ ▐ ▐██  ▄▄▐▀█   ▐▄█▀▌█▐███▐█      ]],
	[[   ███ ▌▄█▌  ▀  ▀██  ▀██████▌     ]],
	[[    ▀█▌▀██▀ ▄         ███▐███     ]],
	[[     ██▌             ▐███████▌    ]],
	[[     ███     ▀█▀     ▐██▐███▀▌    ]],
	[[     ▌█▌█▄         ▄▄████▀ ▀      ]],
	[[       █▀██▄▄▄ ▄▄▀▀▒█▀█           ]],
}

---@diagnostic disable-next-line: unused-local
local header_kanagawa_dark = {
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢀⣀⣀⣄⣤⣤⣤⣤⣠⣀⣀⡀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣴⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⠿⠿⠟⢛⠛⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠋⡉⠀⠀⡀⠐⠀⠠⡈⡂⠢⢁⢉⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠉⠁⠀⢁⠀⠀⠁⠠⢐⠠⡊⢂⠪⡠⠈⡌⠄⢄⡑⣝⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠄⠂⠁⡈⡢⢊⣆⡡⣘⢔⡥⣺⡤⡑⠔⠁⢅⠅⢅⠌⣜⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⢀⣼⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⡀⠄⠀⡀⢅⢪⢰⣡⢯⡿⣧⣷⡽⣟⣿⣼⢈⠌⡂⠅⢂⢈⢉⠛⢉⢛⡛⡿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⢿⣗⣿⣽⣿⢻⢾⣿⢫⣾⣿⢫⣯⣶⡮⡪⢌⠰⢈⠆⡌⠰⢀⠳⠛⣛⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⠿⠉⠀⡀⠄⠂⠁⠀⠐⠀⠉⠾⠻⢞⣏⢾⣽⡳⣟⡿⣼⣿⡷⢻⢛⡅⣤⡑⢔⢑⢐⠑⠢⢈⢢⣶⣮⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀]],
	[[⠀⠀⠀⢠⣿⣟⢍⣍⠭⠃⠁⡀⠄⢀⢀⠀⢄⠂⠀⠂⠀⢄⠄⡈⢐⣰⢻⡯⣺⣿⢱⣿⣾⢱⣱⣿⣿⣿⣷⣢⡱⣷⡦⡈⢌⠊⣟⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀]],
	[[⠀⠀⠀⢼⣿⠏⢈⠀⡀⡀⠂⠀⢠⠂⠂⠌⡢⠡⣀⠑⢀⠢⠑⠨⠠⡈⡉⠤⣱⠿⠽⢿⢇⢧⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⢔⣗⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀]],
	[[⠀⠀⠀⣿⣿⠁⢀⢂⢂⠪⡨⢘⢢⡣⣢⡢⠂⠅⢆⠨⡐⢼⣬⢪⡴⡮⣀⠅⣂⢸⣬⣻⣗⢵⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣗⠀⠀⠀]],
	[[⠀⠀⠀⣿⣿⡐⢌⠪⣐⠌⠔⡐⣙⢘⢟⣿⠄⡑⢈⠌⢀⠌⢛⢉⢽⡽⣾⢼⣰⡭⣷⣫⣷⡹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⠀⠀⠀]],
	[[⠀⠀⠀⣿⣿⡢⡅⣧⡙⣿⣕⢷⢜⣮⢹⡽⠨⢨⣂⢮⢦⡊⢄⢡⢢⢷⣝⡯⣾⢞⡾⣞⣷⣷⢽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⠀⠀⠀]],
	[[⠀⠀⠀⢿⣿⡇⢉⠡⢰⠐⡭⡽⣟⣿⣌⢞⢎⡞⣿⣌⢻⣞⣴⡝⣷⢯⣻⣞⠋⠀⠙⠙⡛⢿⣷⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀]],
	[[⠀⠀⠀⢸⣿⣿⠠⠨⠢⠂⠔⢔⡒⡝⣞⢷⣭⢻⢜⣞⢷⣜⠵⡿⣿⡻⠃⠁⠀⠀⠂⠁⠀⠀⢙⢷⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀]],
	[[⠀⠀⠀⠀⣿⣿⣷⡭⣦⡪⣾⢸⠵⡭⣢⢳⢸⢍⡳⢝⢗⢽⢻⠪⢉⠀⠐⠀⠁⡐⡠⠀⠠⠐⠀⢊⠙⠾⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⢉⠹⣿⣿⡟⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠘⣿⣿⣯⢷⣳⣟⣧⣕⢝⠮⣣⢗⠕⢎⠇⠎⠀⠀⡀⠀⡀⠄⠂⠔⢀⢂⠀⡀⢀⠀⢀⠡⢠⠠⠠⠙⢿⣿⣿⣿⣯⡻⡻⣩⣠⣌⢀⢤⣿⣿⠁⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠹⣿⣿⡝⠙⠛⠚⠉⡁⠁⢀⠁⠁⡁⠠⠀⠈⠀⢀⠀⠆⠠⡨⡨⠰⠀⢑⢈⠄⢌⡂⠄⠀⠌⢔⡁⢀⡉⠛⠛⠷⢿⢷⣦⣕⣯⣺⣿⣿⠃⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠙⣿⣿⣆⠄⠂⢀⢐⠈⡀⠀⠠⢈⢂⠁⠌⠈⢐⠁⡉⢂⠁⠀⡈⠌⡒⠈⣌⠢⡓⡌⡂⢌⠒⢼⣤⠘⣦⡑⢲⣐⠠⠐⠐⣨⣿⡿⠃⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠘⢿⣿⣷⡜⡐⠠⠁⢴⡆⡡⢁⠀⡂⠅⢈⢀⠀⡐⢄⠕⢡⠐⠨⠐⡀⢫⢷⢣⣪⠨⡲⡡⡠⠙⠳⢽⢾⣧⡳⢷⣬⣾⣿⡟⠁⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⢿⣿⣷⣣⡝⡞⡕⠌⡂⢂⠂⠅⠆⠄⡃⢐⢐⠘⣌⠤⢅⢑⠄⡀⠻⢯⢻⣳⢌⢞⢼⣙⢖⣔⢅⢏⢟⣷⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⣿⣿⣷⣔⣴⣕⣸⡾⡬⣐⠁⡢⠨⠂⠡⠈⢻⢼⣜⣖⠡⣐⠄⠙⠷⣝⣯⢷⣕⠬⡑⣎⣳⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⣿⣿⣷⣿⣞⣿⣕⠀⡀⡂⢷⡔⡌⡰⡆⢪⡹⣺⣺⡦⢐⠠⢈⠙⠯⣯⣿⣷⣿⡿⠟⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⠿⣿⣿⣷⣶⣮⣾⣆⣕⣈⣉⢔⣐⢌⢌⣚⣽⣿⣼⣶⣾⣿⣿⠿⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠈⠛⠛⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠟⠛⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
}

---@diagnostic disable-next-line: unused-local
local header_kanagawa_light = {
	[[          ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⣀⣀⣠⡤⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀              ]],
	[[        ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⢶⣿⣿⢿⣯⣿⣟⢷⢽⣝⡾⡶⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀             ]],
	[[      ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣶⣾⣿⡾⣿⣿⣾⣟⡯⣟⢵⡽⣕⢟⣷⢳⣻⡻⢮⠢⠀⠀⠀⠀⠀⠀⠀⠀⠀          ]],
	[[     ⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣻⣽⣾⢷⢝⡵⠹⢞⠧⡫⢚⠅⢛⢮⣫⣾⡺⣺⡺⣳⠣⠀⠀⠀⠀⠀⠀⠀⠀⠀          ]],
	[[    ⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⢿⣻⣿⢿⡺⡕⡏⠞⡐⢀⠘⠈⢂⠠⠀⠃⡷⣳⢽⣺⡽⡷⡶⣤⡶⡤⢤⢀⠀⠀⠀⠀          ]],
	[[  ⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⡀⠨⠀⠂⠀⡄⡁⠀⡔⠁⠀⡔⠐⠉⢑⢕⡳⣏⡷⣹⢳⣏⡿⣌⣤⠤⠀⠀⠀          ]],
	[[ ⠀⠀⠀⠀⠀⠀⣀⣶⣿⢿⣻⣽⣾⣿⣯⣿⣶⣁⣄⡡⠰⡁⠂⢌⠠⢀⠃⠀⢈⡄⡤⢺⠛⢮⡫⡮⡯⣮⣝⡷⡝⠉⠑⠀⠀          ]],
	[[⠀⠠⡲⠲⣒⣼⣾⢿⣻⡿⡿⣿⡻⣽⣿⣽⣿⡻⣻⢷⡯⠏⡄⢐⠅⠀⡎⠀⠁⡎⠎⠀⠀⠀⠈⠝⢎⠈⢙⢷⡳⣵⠠⠀⠀⠀          ]],
	[[⠀⣰⡷⣿⢿⢿⣽⣿⡟⣽⣽⣳⢝⣞⠿⣮⡿⣝⣮⣗⣟⢷⢶⣛⠎⣀⣂⡀⡸⡘⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⡫⠨⠀⠀⠀⠀          ]],
	[[⠀⣾⡿⡽⡽⣕⢗⡧⡝⢜⠝⢝⣽⣺⡹⣗⢯⡃⠓⡕⢋⢑⠿⣺⠽⡇⠓⠄⠨⡊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀          ]],
	[[⠀⢯⡳⣕⠯⣳⣫⢯⠦⡧⡠⠀⣻⢮⡷⣳⡿⣳⡤⡶⡂⢂⠁⡃⠏⢒⠈⠔⠈⢆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀          ]],
	[[⠀⢝⢺⠘⢦⠀⠪⡈⡣⠑⡆⢂⣗⡗⠽⡑⡙⢵⡻⡞⡝⡈⠢⢐⠁⡡⢁⠡⠈⠈⡂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀          ]],
	[[⠀⢸⡶⣞⡏⣯⢒⢂⠠⠀⠳⡡⡱⢡⠀⠳⡄⠡⠋⢢⠈⡐⠄⠡⣴⣿⣦⣦⢤⡀⠈⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀          ]],
	[[⠀⠀⣟⣗⣝⣽⣫⡫⢭⢢⠡⡈⠒⡄⡣⠡⡈⠣⣊⢀⠀⢄⣼⣾⣿⣿⣽⣾⣿⣿⡦⡈⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀          ]],
	[[⠀⠀⠈⢒⠙⢕⠁⡇⣊⢒⠝⡌⡇⡲⢌⡢⡨⡂⡄⣕⡶⣿⣯⣿⣾⢯⢟⣿⣟⣯⣿⡵⣦⣁⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⡶⣆⠀      ]],
	[[ ⠀⠀⠐⡈⠌⠠⠘⠪⡢⣑⠜⡨⣪⡱⣸⣱⣿⣿⢿⣿⢿⣻⣽⣫⡿⡽⣿⢿⡿⣿⡿⣞⡟⣟⣟⣦⡀⠀⠀⠀⠐⢄⢄⠖⠟⠳⡿⡛⠀      ]],
	[[  ⠀⠀⢢⣦⣤⣥⣶⢾⣾⡿⣾⣾⢾⣟⣿⣷⣿⡿⣿⣹⣟⢗⢗⣏⣿⡮⡷⣻⡳⢽⣻⣿⣳⡫⢾⡿⢶⣤⣤⣈⡀⡈⠙⠪⠐⠅⠀⠀      ]],
	[[   ⠀⠀⠹⣻⣽⡿⡯⣷⢿⣿⣟⡷⡽⣾⣳⣷⡯⣾⢶⡽⣾⣿⢷⣳⢭⣷⠳⣝⢬⢳⢽⡳⣭⡃⠛⣧⠙⢮⡍⠯⣟⣯⣯⠗         ]],
	[[     ⠀⠈⢣⢯⣟⣾⡋⢹⢞⡾⣿⢽⣺⡷⡿⣿⢯⡻⣪⡞⣯⣗⣯⢿⡔⡈⡜⠕⣗⢍⢞⢟⣦⣌⡂⡁⠘⢌⡈⠓⠁⠀         ]],
	[[       ⠀⠈⠜⢢⢡⢪⣳⢽⡽⣽⣺⣹⣻⢼⡯⡯⣧⠳⣛⡺⡮⣻⢿⣄⡐⡄⠌⡳⡡⡃⠦⡩⠫⡺⡰⡠⠈            ]],
	[[        ⠀⠀⠈⠫⠋⠪⠇⢁⢓⠯⣾⢝⣗⣽⣞⣷⡄⡃⠣⠩⣞⠯⣻⣦⣈⠢⠐⡈⠪⣓⢮⠱⠌               ]],
	[[           ⠀⠀⠈⠀⠡⠀⠪⣿⢿⢽⡈⢫⢳⢏⢹⡕⢆⠅⠅⢙⡯⣟⡷⣦⣐⠐⠀⠈                 ]],
	[[               ⠀⠀⠈⠉⠑⠁⠹⠪⠷⠶⡫⠯⡳⡳⠥⠂⠀⠃⠉⠁⠀⠀                   ]],
}

local header = {
	type = "text",
	val = header_comic_blush,
	opts = {
		position = "center",
		hl = "Type",
	},
}

local subtext = {
	type = "text",
	val = "~ fuck shit up ~",
	opts = {
		position = "center",
		hl = "Type",
	},
}

local function button(sc, txt, keybind, keybind_opts)
	local sc_ = sc:gsub("%s", ""):gsub(leader, "<leader>")

	local opts = {
		position = "center",
		shortcut = sc,
		cursor = 5,
		width = 50,
		align_shortcut = "right",
		hl_shortcut = "Type",
	}
	if keybind then
		keybind_opts = if_nil(keybind_opts, { noremap = true, silent = true, nowait = true })
		opts.keymap = { "n", sc_, keybind, keybind_opts }
	end

	local function on_press()
		local key = vim.api.nvim_replace_termcodes(keybind or sc_ .. "<Ignore>", true, false, true)
		vim.api.nvim_feedkeys(key, "t", false)
	end

	return {
		type = "button",
		val = txt,
		on_press = on_press,
		opts = opts,
	}
end

local buttons = {
	type = "group",
	val = {
		button(
			"p",
			"  Find project",
			":lua require'telescope'.extensions.project.project{ display_type = 'full' }<CR>",
			{}
		),
		button("r", "  Recent files", ":lua require'telescope.builtin'.oldfiles{}<CR>", {}),
		button("q", "ﰌ  Quit", ":qa<CR>", {}),
	},
	opts = {
		spacing = 1,
	},
}

local lazy_stats = require("lazy").stats()

local footer = {
	type = "text",
	val = "󰏖 " .. lazy_stats.count .. " total plugins  |  󱐋 loaded " .. lazy_stats.loaded .. " plugins",
	opts = {
		position = "center",
		hl = "DiagnosticWarn",
	},
}

local config = {
	layout = {
		{ type = "padding", val = 8 },
		header,
		{ type = "padding", val = 1 },
		subtext,
		{ type = "padding", val = 4 },
		buttons,
		{ type = "padding", val = 4 },
		footer,
	},
	opts = {
		margin = 5,
	},
}

require("alpha").setup(config)
