#@codekit-prepend "../bower_components/jquery/dist/jquery.js"
$ ->
  $(".project").click ->
    $(@).addClass("active")
    $(@).siblings(".project").addClass("hidden")

  $(".exit-project").click ->
    $('.project').removeClass 'active hidden'
    location.reload()

    $('.project').each (p, i) ->
      console.log $(i).attr 'class'
    # project = $(@).closest('.project')
    # console.log project.attr 'class'
    #
    # project.removeClass("active")
    # console.log $(project).attr 'class'
    # project.siblings(".project").removeClass("hidden")

  $('.recent-projects').click ->
    $('html, body').animate { scrollTop: $('#recent-projects').offset().top }, 500
    return


  $('.about').click ->
    $('html, body').animate { scrollTop: $('#about').offset().top }, 500
    return
  $('.back').click ->
    $('html, body').animate { scrollTop: $('.logo').offset().top }, 500
    return