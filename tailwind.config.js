const colors = require("tailwindcss/colors");

module.exports = {
  purge: [],
  darkMode: false, // or 'media' or 'class'
  theme: {
    colors:{
      hh:{
        white:'#fffffe',
        black:{
          dark:'#0d0d0d',
          light:'#2a2a2a'
        },
        orange:{
          dark:'#ff8e3c',
          light:'#ffaf75'
        },
        pink:{
          dark:'#d9376e',
          light:'#ff88b0'
        },
        gray:{
          dark:'#c5c5c5',
          light:'#eff0f3'
        }
      },
      transparent: 'transparent',
      current: 'currentColor',
      black: colors.black,
      white: colors.white,
      gray: colors.trueGray,
      indigo: colors.indigo,
      red: colors.rose,
      yellow: colors.amber,
    },
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
