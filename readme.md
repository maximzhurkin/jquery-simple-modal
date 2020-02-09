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
	$().simpleModal({
		name: 'example',
		title: 'Example',
		content: '<button class="my-button">Lorem ipsum</button>',
		size: 'small', // or integer for custom width
		freeze: true,
		callback: function() {
			$('.simple-modal--example .my-button').click(function() {
				console.log('Click from modal');
			});
		}
	});
});
```
