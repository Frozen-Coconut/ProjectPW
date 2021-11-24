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
          darker:'#cf5700',
          dark:'#ff8e3c',
          light:'#ffaf75',
          lighter:'#ffcfac'
        },
        pink:{
          darker:'#b8003e',
          dark:'#d9376e',
          light:'#ff6fa0',
          lighter:'#ffccdd'
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
      blue: colors.blue,
      green: colors.green
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
