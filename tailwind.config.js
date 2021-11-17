module.exports = {
  purge: [],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      backgroundImage:{
        'ig-ico':"url('./asset/icons/instagram.png')",
        'fb-ico':"url('./asset/icons/facebook.png')",
        'in-ico':"url('./asset/icons/linkedin.png')",
        'yt-ico':"url('./asset/icons/youtube.png')",
        'tw-ico':"url('./asset/icons/twitter.png')"
      }
    },
  },
  variants: {
    extend: {
      opacity: ['disabled']
    },
  },
  plugins: [
    require('@tailwindcss/forms')
  ],
}
