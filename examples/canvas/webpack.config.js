const path = require('path');
const webpack = require('webpack');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const HtmlWebpackInlineSourcePlugin = require('html-webpack-inline-source-plugin');

module.exports = {
    entry: './spasm/entry.js',
    mode: "production",
    plugins: [
        new HtmlWebpackPlugin({
            title: 'Spasm',
            inlineSource: '.(js|css)$',
            template: './spasm/index.template.html'
        }),
        new HtmlWebpackInlineSourcePlugin(),
    ],
    module: {
        rules: [
            { test: /\.js$/, exclude: /node_modules/, loader: "babel-loader" },
        ]
    },
    output: {
        path: path.resolve(__dirname, '.')
    },
    devServer: {
        contentBase: path.join(__dirname, '.'),
    },
    context: path.resolve(__dirname, '.')
};
