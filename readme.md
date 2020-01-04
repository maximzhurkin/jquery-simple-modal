# jQuery Simple Modal
Very simple responsive jQuery modal plugin

[Example](https://maximzhurkin.github.io/jquery-simple-modal/)

## Getting Started
### 1. Include styles & scripts
```html
<head>
    <link href="jquery.simple-modal.min.css" rel="stylesheet">
    <script src="jquery.min.js"></script>
    <script src="jquery.simple-modal.min.js"></script>
</head>
```
### 2. Initialize plugin
```javascript
$(document).ready(function() {
	$('.button').click(function(){
		$().simpleModal({
			name: 'simple',
			title: 'Simple modal',
			content: '<p>Lorem ipsum dolor sit amet...</p>',
			size: 'small',
			freeze: true
		});
  });
});
```
