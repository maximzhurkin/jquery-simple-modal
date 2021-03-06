$(document).ready ->

	$('[data-action=modal-small]').click (e) ->
		e.preventDefault()

		$().simpleModal
			name: 'small'
			title: 'Small'
			content: '<div class="my-content"><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat ullam mollitia aspernatur.</p></div>'
		return

	$('[data-action=modal-middle]').click (e) ->
		e.preventDefault()

		$().simpleModal
			name: 'middle'
			title: 'Middle'
			content: '<div class="my-content"><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi suscipit et esse iusto, odit nemo voluptatum ut ipsum ea officiis culpa beatae quam corrupti.</p><p>Reprehenderit veritatis eum temporibus repellendus fugit hic, illum cupiditate maiores harum rerum. Laudantium exercitationem alias cumque voluptate deleniti atque dolore, odio commodi quaerat molestias, reiciendis, sed impedit.</p></div>'
			size: 'middle'
		return

	$('[data-action=modal-large]').click (e) ->
		e.preventDefault()

		$().simpleModal
			name: 'large'
			title: 'Large'
			content: '<div class="my-content"><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi suscipit et esse iusto, odit nemo voluptatum ut ipsum ea officiis culpa beatae quam corrupti. Reprehenderit veritatis eum temporibus repellendus fugit hic, illum cupiditate maiores harum rerum. Laudantium exercitationem alias cumque voluptate deleniti atque dolore, odio commodi quaerat molestias, reiciendis, sed impedit.</p><p>Soluta velit laborum vitae, recusandae debitis quam, atque voluptates corrupti cum aliquid dolores sequi possimus obcaecati culpa incidunt doloribus ex enim minima dolor est delectus dolorum. Dolor veritatis, necessitatibus quos.</p><p>Corporis officiis fugiat eum? Earum mollitia dicta iste alias repellat dignissimos harum suscipit voluptate impedit accusamus laborum, similique, corporis velit nobis minus neque atque, voluptatem non debitis in, sapiente! Quae delectus reiciendis officia molestias, dolore id perspiciatis tempora amet excepturi vel inventore error iusto deleniti labore quos? In id fuga ea nostrum, voluptatem, dolore quasi culpa debitis, necessitatibus nam soluta. Quasi, fugit, dolore. Labore aliquid dicta, voluptatum itaque quo maxime expedita facilis laboriosam optio, temporibus illo sequi dolorum libero, harum veritatis commodi quia aut odio? Nostrum similique, quo alias quidem placeat, eum, iusto quasi nisi impedit aut ratione consequatur officia blanditiis dicta. Dolorum sequi eos, officia quisquam consequuntur qui praesentium ducimus modi amet corporis, et ad expedita iusto! Minus excepturi molestias explicabo, vitae velit porro consequatur laboriosam iure, minima repudiandae saepe illum quibusdam obcaecati autem necessitatibus nulla! Maiores asperiores rerum quo nostrum accusamus quibusdam, consectetur ullam.</p></div>'
			size: 'large'
		return

	$('[data-action=modal-callback]').click (e) ->
		e.preventDefault()

		$().simpleModal
			name: 'small'
			title: 'Small'
			content: '<div class="my-content"><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat ullam mollitia aspernatur.</p><p><strong><a class="link link--dotted" href="#" data-action="modal-in-modal">Show from modal</a></strong></p></div>'
			callback: ->
				$('[data-action=modal-in-modal]').click (e) ->
					e.preventDefault()

					$().simpleModal
						name: 'modal-in-modal'
						title: 'From modal'
						content: '<div class="my-content"><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi suscipit et esse iusto, odit nemo voluptatum ut ipsum ea officiis culpa beatae quam corrupti.</p><p>Reprehenderit veritatis eum temporibus repellendus fugit hic, illum cupiditate maiores harum rerum. Laudantium exercitationem alias cumque voluptate deleniti atque dolore, odio commodi quaerat molestias, reiciendis, sed impedit.</p></div>'
						size: 'middle'
				return
		return

	$('[data-action=modal-unfreeze]').click (e) ->
		e.preventDefault()

		$().simpleModal
			name: 'unfreeze'
			title: 'Modal without freeze'
			content: '<div class="my-content"><p>Scroll page...</p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat ullam mollitia aspernatur.</p></div>'
			freeze: false
		return

	$('[data-action=modal-custom]').click (e) ->
		e.preventDefault()

		$().simpleModal
			name: 'custom'
			title: 'Custom'
			content: '<div class="my-content"><p>Custom size 200px</p></div>'
			size: 200
		return

	return
