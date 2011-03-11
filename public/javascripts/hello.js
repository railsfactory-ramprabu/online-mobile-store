goog.provide('example');
goog.require('goog.dom');
example.hello_fun = function(message) {
	goog.dom.getElement('hello').innerHTML = message;
};
