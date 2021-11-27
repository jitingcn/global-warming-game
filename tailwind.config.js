const colors = require('tailwindcss/colors')

module.exports = {
  mode: 'jit',
  purge: {
    content: [
      "./app/javascript/stylesheets/**/*.*css",
      "./app/javascript/controllers/*.js",
      "./app/views/**/*.*",
      "./app/components/*.*",
      "./app/helpers/**/*.*",
    ],
    options: {
      whitelist: [],
    },
  },
  darkMode: 'class', // or 'media' or 'class'
  theme: {
    colors: {
      ...colors,
    },
    extend: {},
  },
  variants: {
    extend: {},
  },
  plugins: [],
}
