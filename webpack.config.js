var webpack = require('webpack');
var path = require('path');

module.exports = {
  entry: {
    default: './source/assets/javascripts/default.js',
    presentation: './source/assets/javascripts/presentation.js'
  },
  output: {
    path: __dirname + "/.tmp/dist/",
    filename: "javascripts/[name].bundle.js",
  },
  module: {
    loaders: [
      {
        test: /\.js$/,
        loader: 'babel-loader',
        exclude: /node_modules/,
        query: {
          presets: ['es2015']
        }
      },
    ]
  },
  plugins: [
    // global access to jquery
    new webpack.ProvidePlugin({
      $: "jquery",
      jQuery: "jquery",
      "window.jQuery": "jquery"
    }),
  ],
};
