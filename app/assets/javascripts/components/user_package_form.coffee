@UserPackageForm = React.createClass
  getInitialState: ->
    shipping_status: ''
  handleSubmit: (e) ->
    e.preventDefault()
    $.post '', { user_package: @state }, (data) =>
      @props.handleNewUserPackage data
      @setState @getInitialState()
    , 'JSON'
  render: ->
    React.DOM.form
      className: 'form-inline'
      onSubmit: @handleSubmit
      React.DOM.div
        className: 'form-group'
        React.DOM.input
          type: 'text'
          className: 'form-control'
          placeholder: 'Shipping Status'
          name: 'shipping_status'
          value: @state.shipping_status
          onChange: @handleChange
      React.DOM.button
        type: 'submit'
        className: 'btn btn-primary'
        disabled: !@valid()
        'Create Package'
  handleChange: (e) ->
    name = e.target.name
    @setState "#{ name }": e.target.value
  valid: ->
    @state.shipping_status