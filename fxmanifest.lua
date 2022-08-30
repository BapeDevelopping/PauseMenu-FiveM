fx_version "adamant"
games { "gta5" }
version '1.0'

client_script 'client.lua'
server_script 'server.lua'
shared_script 'shared.lua'

ui_page 'html/index.html'

files {
	'html/index.html',
	'html/assets/js/script.js',
	'html/assets/css/style.css',
	'html/assets/font/*.ttf',
	'html/assets/img/*',
}
