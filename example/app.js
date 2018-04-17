var Material = require('ti.material');

var win = Ti.UI.createWindow({
  backgroundColor: '#fff'
});

var btn = Material.createRaisedButton({
  top: 100,
  width: 300,
  height: 40,
  color: '#fff',
  backgroundColor: '#8c191b',
  title: 'Titanium rocks',
});

btn.addEventListener('click', function() {
  alert('YEY!');
});

var field = Material.createTextField({
  top: 200,
  width: 300,
  height: 40,
  hintText: 'Enter Value ...'
});

field.addEventListener('change', function(e) {
  Ti.API.info(e.value);
});
field.addEventListener('focus', function(e) {
  Ti.API.info('FOCUS!');
});
field.addEventListener('blur', function(e) {
  Ti.API.info('BLUR!');
});

win.add(btn);
win.add(field);
win.open();
