// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  compatibilityDate: '2025-05-15',
  devtools: { enabled: true },

  runtimeConfig: {
    public: {
      wsUrl: 'wss://4000--main--dev-nuxt--lennard.code.spring.nl/ws'
    }
  },

  vite: {
    server: {
      allowedHosts: [
        '3000--main--dev-nuxt--lennard.code.spring.nl',
      ]
    }
  },

  modules: [
    '@nuxt/content',
    '@nuxt/fonts',
    '@nuxt/icon',
    '@nuxt/image',
    '@nuxt/scripts',
    '@nuxt/test-utils'
  ]
})