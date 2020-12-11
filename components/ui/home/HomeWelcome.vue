<template>
  <article
    class="welcome p-6 flex flex-col md:flex-row-reverse md:items-center md:justify-between md:pl-10 lg:my-8 wrapper"
  >
    <WorkingLight
      v-if="$colorMode.preference !== 'dark'"
      class="developer-image mb-3"
    />
    <WorkingDark v-else class="developer-image mb-3" />

    <div class="welcome-text text-center md:text-left">
      <h1 class="title dark:text-gray-main-200">
        Tu comunidad de #Flutter en Madrid
      </h1>

      <p class="paragraph mt-5 text-left dark:text-gray-main-400">
        Flutter es un SDK open source creado principalmente por Google para
        construir increíbles aplicaciones compiladas nativamente para Android,
        iOS, web y escritorio con el mismo código fuente.
      </p>
      <p class="paragraph mt-3 text-left dark:text-gray-main-400">
        Somos una comunidad local creada por y para desarrolladores interesados
        en el desarrollo de aplicaciones con Flutter y Dart.
      </p>

      <Button text="Únete" class="mt-5" @click="goToMeetup" />
    </div>
  </article>
</template>

<script>
export default {
  name: 'HomeWelcome',
  components: {
    WorkingLight: () =>
      import('@/assets/images/working_together_light.svg?inline'),
    WorkingDark: () =>
      import('@/assets/images/working_together_dark.svg?inline'),
  },
  methods: {
    goToMeetup() {
      window.location.href = 'https://www.meetup.com/es-ES/Flutter-Madrid/'
    },
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
    height: 60vh;
  }

  .welcome-text {
    max-width: 600px;
  }

  .developer-image {
    height: 25rem;
    max-height: 100%;
    min-width: 26rem;
    max-width: 60rem;
  }
}
</style>
