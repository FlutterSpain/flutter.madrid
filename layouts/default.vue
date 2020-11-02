<template>
  <div class="h-screen">
    <BaseHeader />
    <main class="main overflow-y-auto bg-light dark:bg-dark">
      <Nuxt />
    </main>
    <BottomNavBar />
  </div>
</template>

<style>
html {
  font-family: 'Rubik', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto,
    'Helvetica Neue', Arial, sans-serif;
  font-size: 16px;
  word-spacing: 1px;
  -ms-text-size-adjust: 100%;
  -webkit-text-size-adjust: 100%;
  -moz-osx-font-smoothing: grayscale;
  -webkit-font-smoothing: antialiased;
  box-sizing: border-box;
}

*,
*::before,
*::after {
  box-sizing: border-box;
  margin: 0;
}

.main {
  height: calc(100% - var(--header-mobile));
}

.title {
  display: block;
  font-weight: 700;
  font-size: 2rem;
  color: #35495e;
  letter-spacing: 1px;
}

.subtitle,
.nuxt-content > h2 {
  display: block;
  font-weight: 500;
  font-size: 1.5rem;
  color: #35495e;
  letter-spacing: 1px;
}

.nuxt-content > h2 {
  margin: 1rem 0;
}

.nuxt-content ul {
  list-style: disc;
  padding-left: 2.5rem;
}

html.dark .nuxt-content h2 {
  @apply text-gray-main-200;
}

.links {
  padding-top: 15px;
}

.links:hover {
  text-decoration: underline;
}

.paragraph,
.nuxt-content p {
  font-family: Roboto, 'Helvetica Neue', Arial, sans-serif;
  font-size: 1rem;
  margin-top: 1rem;
}

html.dark .nuxt-content p {
  @apply text-gray-main-400;
}

.nuxt-content a {
  text-decoration: underline;
}

.button {
  @apply py-3 px-6 border bg-blue-main-500 text-white border-blue-main-500 rounded-lg font-bold text-xs;
  min-width: 200px;
}

.outline-button {
  @apply py-3 px-6 border bg-transparent text-blue-main-500 border-blue-main-500 rounded-lg font-bold text-xs;
  min-width: 200px;
}

@media (min-width: 768px) {
  .main {
    height: calc(100% - var(--header));
  }

  .title {
    font-size: 3rem;
  }

  .subtitle,
  .nuxt-content > h2 {
    font-size: 2rem;
  }

  .nuxt-content p {
    max-width: 37.5rem;
  }

  .button,
  .outline-button {
    font-size: 1rem;
    min-width: 300px;
  }
}
</style>
