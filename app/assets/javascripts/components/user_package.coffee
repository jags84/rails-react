@UserPackage = React.createClass
  handleDelete: (e) ->
    e.preventDefault()
    $.ajax
      method: 'DELETE'
      url: "/user_packages/#{ @props.user_package.id }"
      dataType: 'JSON'
      success: () =>
        @props.handleDeleteUserPackage @props.user_package
  render: ->
    React.DOM.tr null,
      React.DOM.td null, @props.user_package.id
      React.DOM.td null, @props.user_package.shipping_status
      React.DOM.td null,
        React.DOM.a
          className: 'btn btn-danger'
          onClick: @handleDelete
          'Delete'

