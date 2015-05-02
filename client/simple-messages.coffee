class Message
    constructor: ->
        @options =
            autoHide     : true,
            hideDelay    : 5000,
            autoScroll   : true,
            isClosable   : true,
            id           : 'simpleMessage',
            title        : '',
            body         : '',
            type         : 'alert-info'

    send: (data, type) ->
        @setConfig data
        @options.type = type if type
        $('html, body').animate({ scrollTop: 0 }, 200) if @options.autoScroll

        if @options.autoHide
            id = "##{@options.id}"
            Meteor.clearTimeout()
            Meteor.setTimeout ->
                $(id).find('.alert').fadeOut(400, -> id.html = '')
            , @options.hideDelay

        el = document.getElementById(@options.id)
        el.innerHTML = ''
        Blaze.renderWithData(Template.message, @.options, el) if el

    setConfig: (data) ->
        if typeof data is 'string'
            @options.body = data
        else if data instanceof Array
            ul = ['<ul>']
            for i of data
                ul.push "<li>#{data[i]}</li>"
            ul.push '</ul>'
            @options.body = ul.toString().replace(/>,</g, '><')
        else
            @options = $.extend(@options, data)

class @Messages extends Message
    clear: ->
        Meteor.clearTimeout()
        el = document.getElementById(@options.id)
        el.innerHTML = '' if el

    sendInfo: (data) -> @send data, 'alert-info'
    sendDanger: (data) -> @send data, 'alert-danger'
    sendSuccess: (data) -> @send data, 'alert-success'
    sendWarning: (data) -> @send data, 'alert-warning'
