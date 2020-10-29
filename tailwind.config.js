module.exports = {
  experimental: {
    darkModeVariant: true,
  },
  dark: 'class',
  theme: {
    extend: {
      backgroundColor: (theme) => ({
        light: theme('colors.white'),
        dark: theme('colors.gray-main.700'),
      }),
      colors: {
        'gray-main': {
          200: '#FAFAFA',
          300: '#F4F4F4',
          400: '#DDDDDD',
          500: '#4F5665',
          700: '#1A202C',
        },
        'blue-main': {
          400: '#6FB1F2',
          500: '#439BD7',
          600: '#225696',
        },
      },
    },
  },
}
