module.exports = {
    publicPath: process.env.NODE_ENV === 'production'
      ? '/'
      : '/',
    lintOnSave: process.env.NODE_ENV !== 'production',
    devServer: {
        proxy: 'http://localhost:4000'
    }
}