var Material = require('ti.material');

var win = Ti.UI.createWindow({
  backgroundColor: '#fff'
});

var btn = Material.createRaisedButton({
  width: 300,
  height: 40
});

btn.addEventListener('click', function() {
  
});

win.add(btn);
win.open();
