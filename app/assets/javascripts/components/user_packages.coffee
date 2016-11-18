@UserPackages = React.createClass
  getInitialState: ->
    user_packages: @props.data
  getDefaultProps: ->
    user_packages: []
  addUserPackage: (user_package) ->
    user_packages = @state.user_packages.slice()
    user_packages.push user_package
    @setState user_packages: user_packages
  deleteUserPackage: (user_package) ->
    user_packages = @state.user_packages.slice()
    index = user_packages.indexOf user_package
    user_packages.splice index, 1
    @replaceState user_packages: user_packages
  render: ->
    React.DOM.div
      className: 'user_packages'
      React.DOM.h2
        className: 'id'
        'UserPackages'
        React.createElement UserPackageForm, handleNewUserPackage: @addUserPackage
      React.DOM.table
        className: 'table table-bordered'
        React.DOM.thead null,
          React.DOM.tr null,
            React.DOM.th null, 'Id'
            React.DOM.th null, 'shipping_status'
            React.DOM.th null, 'Actions'
        React.DOM.tbody null,
          for user_package in @state.user_packages
            React.createElement UserPackage, key: user_package.id, user_package: user_package, handleDeleteUserPackage: @deleteUserPackage