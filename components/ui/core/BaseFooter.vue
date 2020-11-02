<template>
  <footer
    class="footer p-8 bg-blue-main-700 text-gray-main-200 flex items-center justify-between flex-col lg:flex-row md:p-16"
  >
    <ul>
      <li class="text-white text-2xl font-bold">
        <nuxt-link to="/">Flutter Madrid</nuxt-link>
      </li>
      <li class="mt-4">Código de conducta</li>
      <li class="mt-1">Términos de uso</li>
      <li class="mt-1">
        <a href="mailto:fluttermadrid@gmail.com" target="_blank" class="links">
          fluttermadrid@gmail.com
        </a>
      </li>
    </ul>

    <ul class="mt-10 flex items-center justify-end">
      <li>
        <a href="https://www.meetup.com/es-ES/Flutter-Madrid/" target="_blank">
          <fa class="text-4xl ml-4" :icon="['fab', 'meetup']" />
        </a>
      </li>
      <li>
        <a href="https://twitter.com/fluttermadrid" target="_blank">
          <fa class="text-4xl ml-4" :icon="['fab', 'twitter']" />
        </a>
      </li>
      <li>
        <a href="#" target="_blank">
          <fa class="text-4xl ml-4" :icon="['fab', 'slack']" />
        </a>
      </li>
      <li>
        <a href="https://www.youtube.com/c/fluttermadrid" target="_blank">
          <fa class="text-4xl ml-4" :icon="['fab', 'youtube']" />
        </a>
      </li>
      <li>
        <a href="https://t.me/fluttermadrid" target="_blank">
          <fa class="text-4xl ml-4" :icon="['fab', 'telegram']" />
        </a>
      </li>
      <li>
        <a href="https://github.com/Flutter-Madrid/" target="_blank">
          <fa class="text-4xl ml-4" :icon="['fab', 'github']" />
        </a>
      </li>
    </ul>
  </footer>
</template>

<script>
export default {
  name: 'BaseHeader',
  data() {
    return {}
  },
}
</script>

<style scoped>
.footer {
  margin-bottom: var(--navbar);
  box-shadow: 0px 0px 4px rgba(0, 0, 0, 0.1);
}

@media (min-width: 768px) {
  .footer {
    @apply mb-0;
  }
}
</style>
