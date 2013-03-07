$(document).on "click", "[data-toggle-class]", (event) ->
  event.preventDefault()
  $this   = $(@)
  $target = $( $this.attr("href") )
  $class  = $this.data("toggle-class")
  $target.toggleClass($class)
