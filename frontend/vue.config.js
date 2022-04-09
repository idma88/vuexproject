module.exports = {
  devServer: {
    disableHostCheck: true,
    watchOptions: {
      ignored: ['**/public/**/*', '/node_modules'],
    },
    proxy: {
      '/api': {
        target: 'http://localhost:3000/',
        ws: true,
        changeOrigin: true
      }
    }
  }
}