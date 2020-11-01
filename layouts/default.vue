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
  height: calc(100% - var(--header-mobile) - var(--navbar));
}

.title {
  display: block;
  font-weight: 500;
  font-size: 2rem;
  color: #35495e;
  letter-spacing: 1px;
}

.subtitle {
  display: block;
  font-weight: 500;
  font-size: 1.5rem;
  color: #35495e;
  letter-spacing: 1px;
}

.links {
  padding-top: 15px;
}

.links:hover {
  text-decoration: underline;
}

.paragraph {
  font-family: Roboto, 'Helvetica Neue', Arial, sans-serif;
  font-size: 1rem;
}

.button {
  @apply py-3 px-6 bg-blue-main-500 text-white rounded-lg font-bold text-xs;
  min-width: 200px;
}

@media (min-width: 768px) {
  .main {
    height: calc(100% - var(--header));
  }

  .title {
    font-size: 3rem;
  }

  .subtitle {
    font-size: 2rem;
  }

  .button {
    font-size: 1rem;
    min-width: 300px;
  }
}
</style>
