<template>
  <article
    class="welcome p-6 flex flex-col md:flex-row-reverse md:items-center"
  >
    <DeveloperLight
      v-if="$colorMode.preference !== 'dark'"
      class="developer-image"
    />
    <DeveloperDark v-else class="developer-image" />

    <div class="welcome-text">
      <h1 class="title dark:text-gray-main-200">
        Tu comunidad de #Flutter en Madrid
      </h1>

      <p class="paragraph mt-5 dark:text-gray-main-400">
        Flutter es un SDK open source creado principalmente por Google para
        construir increíbles aplicaciones compiladas nativamente para Android,
        iOS, web y escritorio con el mismo código fuente.
      </p>
      <p class="paragraph mt-3 dark:text-gray-main-400">
        Somos una comunidad local creada para desarrolladores interesados en el
        desarrollo de aplicaciones con Flutter y Dart.
      </p>

      <Button text="Únete" class="mt-5" />
    </div>
  </article>
</template>

<script>
export default {
  name: 'HomeWelcome',
  components: {
    DeveloperLight: () => import('@/assets/images/developer_light.svg?inline'),
    DeveloperDark: () => import('@/assets/images/developer_dark.svg?inline'),
  },
}
</script>

<style scoped>
.developer-image {
  max-height: 12.5rem;
  width: 100%;
}

@media (min-width: 768px) {
  .welcome {
    height: 75%;
  }

  .welcome-text {
    max-width: 600px;
  }

  .developer-image {
    height: 25rem;
    max-height: 100%;
    min-width: 31.25rem; /* 500px */
    max-width: 60rem;
  }
}
</style>
