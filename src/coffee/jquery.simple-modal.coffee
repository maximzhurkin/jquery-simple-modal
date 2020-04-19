(($) ->
	_scrollBarPosition = 0
	_scrollBarWidth = 0
	_freeze = false

	methods =
		init: (options) ->
			if $('body').css('position') != 'fixed'
				_scrollBarPosition = $(document).scrollTop()
			_scrollBarWidth = window.innerWidth - document.documentElement.clientWidth
			_freeze = options.freeze

			methods.create(options.name, options.size, options.title, options.content, options.callback)
			return

		create: (name, size, title, content, callback) ->
			modal = methods.template(name, size, title, content)

			if _freeze and $('body').css('position') != 'fixed' then methods.freeze true
			$('body')
				.append(modal)
				.ready ->
					if callback then callback()
					return
			methods.binding name
			return

		isInteger: (size) ->
			return if size == parseInt(size, 10) then true else false

		template: (name, size, title, content) ->
			if methods.isInteger(size)
				box = '<div class="simple-modal-box" style="max-width: ' + size + 'px;">'
			else
				box = '<div class="simple-modal-box simple-modal-box--' + size + '">'

			return """
				<div class="simple-modal simple-modal--#{name}">
					<div class="simple-modal__container">
						<div class="simple-modal__middle">
							<div class="simple-modal__box">
								#{box}
									<div class="simple-modal-box__header">
										<div class="simple-modal-box__title">#{title}</div>
										<button class="simple-modal-box__close" type="button"></button>
									</div>
									<div class="simple-modal-box__content">#{content}</div>
								</div>
							</div>
						</div>
					</div>
				</div>"""

		binding: (name) ->
			$(".simple-modal--#{name} .simple-modal-box__close").click ->
				methods.close(name)
				return
			$(".simple-modal--#{name} .simple-modal__container").mousedown (e) ->
				if !e.target.closest('.simple-modal-box') then methods.close(name)
				return
			return

		freeze: (state) ->
			if state
				$('body')
					.css('top', "-#{_scrollBarPosition}px")
					.css('position', 'fixed')
					.css('width', '100%')
				if $('html').hasClass 'no-touch'
					$('body').css('padding-right', _scrollBarWidth)
			else
				$('body')
					.css('top', 'auto')
					.css('position', 'relative')
					.css('padding-right', '')
				$(document).scrollTop(_scrollBarPosition)
			return

		close: (name) ->
			$(".simple-modal--#{name}").remove()
			if _freeze and $('.simple-modal').length == 0 then methods.freeze false
			return

	jQuery.fn.simpleModal = (options) ->
		options = $.extend({
			name: ''
			title: ''
			content: ''
			size: 'small'
			freeze: true
		}, options)

		methods.init options
		return

	return
) jQuery
