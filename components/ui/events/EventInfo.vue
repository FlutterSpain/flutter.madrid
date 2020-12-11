<template>
  <article
    class="welcome p-6 flex flex-col md:flex-row-reverse md:items-center md:justify-between md:pl-10 lg:my-8 wrapper"
  >
    <EventsLight
      v-if="$colorMode.preference !== 'dark'"
      class="events-image mb-3"
    />
    <EventsDark v-else class="events-image mb-3" />

    <div class="welcome-text text-center md:text-left">
      <h1 class="title dark:text-gray-main-200">Eventos</h1>

      <p class="paragraph mt-5 text-left dark:text-gray-main-400">
        Nuestro principal objetivo como comunidad de desarrolladores se basa en
        la organización de eventos de cualquier tipo para dar a conocer y
        aprender más sobre el framework y todas sus ventajas.
      </p>
      <p class="paragraph mt-3 text-left dark:text-gray-main-400">
        Nos encanta reunirnos, charlar, compartir experiencias, organizar retos
        con la comunidad. Si quieres participar en alguno de nuestros eventos o
        tienes una idea para un evento y quieres que te ayudemos a llevarla a
        cabo no lo dudes, contacta con nosotros.
      </p>
    </div>
  </article>
</template>

<script>
export default {
  name: 'EventInfo',
  components: {
    EventsLight: () => import('@/assets/images/events_light.svg?inline'),
    EventsDark: () => import('@/assets/images/events_dark.svg?inline'),
  },
  methods: {
    goToMeetup() {
      window.location.href = 'https://www.meetup.com/es-ES/Flutter-Madrid/'
    },
  },
}
</script>

<style scoped>
.events-image {
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

  .events-image {
    height: 25rem;
    max-height: 100%;
    min-width: 26rem;
    max-width: 60rem;
  }
}
</style>
