const electron = require('electron')
const {app, BrowserWindow} = electron
require('electron-debug')({showDevTools: true});

app.on('ready', () => {
	let win = new BrowserWindow({width:800, height: 600})
	win.loadURL('file://' + __dirname + '/cube.html')
})