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

var contentView = Ti.UI.createView({
  height: 100,
  backgroundColor: 'red'
});

contentView.add(Ti.UI.createLabel({
  text: 'Hello world!',
  textAlign: 'center',
  width: 200,
  height: 50
}));

var card = Material.createCardView({
  top: 300,
  width: 300,
  cornerRadius: 10
});

card.setContentView(contentView);

win.add(btn);
win.add(field);
win.add(card);
win.open();
