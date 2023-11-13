# Load the Rails application.
require_relative "application"

  const webpack = require("webpack")

  environment.plugins.append("Provide", new webpack.ProvidePlugin({

  $: 'jquery',

  jQuery: 'jquery',

  Popper: ['popper.js', 'default']

  }))
# Initialize the Rails application.
Rails.application.initialize!
