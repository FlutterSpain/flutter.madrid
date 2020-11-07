<template>
  <article
    class="contact p-6 flex flex-col md:flex-row-reverse md:items-center md:justify-between md:pl-10 lg:my-8"
  >
    <SupportLight
      v-if="$colorMode.preference !== 'dark'"
      class="support-image mb-3"
    />
    <SupportDark v-else class="support-image mb-3" />

    <div class="contact-text text-center md:text-left">
      <h1 class="title dark:text-gray-main-200">Contacta con nosotros</h1>

      <p class="paragraph mt-5 text-left dark:text-gray-main-400">
        ¿Tienes una idea, duda o pregunta para nosotros?<br />¿Quieres decirnos
        algo y no sabes cómo?<br />¿Te gustaría ayudar o participar en un
        evento?
      </p>
      <p class="paragraph mt-3 text-left dark:text-gray-main-400">
        Aquí te dejamos algunas de las vías por donde nos encontrarás dispuestos
        a charlar.
      </p>
      <ul class="mt-10 flex flex-col lg:flex-row justify-around">
        <SocialLink
          link="https://www.meetup.com/es-ES/Flutter-Madrid/"
          type="meetup"
          text="Meetup"
          class="mb-4"
        />
        <SocialLink
          link="https://twitter.com/fluttermadrid"
          type="twitter"
          text="Twitter"
          class="mb-4"
        />
        <SocialLink
          link="mailto:fluttermadrid@gmail.com"
          type="google"
          text="Email"
          class="mb-4"
        />
        <SocialLink
          link="http://flutter-es.slack.com/"
          type="slack"
          text="Slack"
          class="mb-4"
        />
      </ul>
    </div>
  </article>
</template>

<script>
export default {
  name: 'ContactInfo',
  components: {
    SupportLight: () => import('@/assets/images/support_light.svg?inline'),
    SupportDark: () => import('@/assets/images/support_dark.svg?inline'),
  },
}
</script>

<style scoped>
.support-image {
  max-height: 12.5rem;
  width: 100%;
}

@media (min-width: 768px) {
  .contact {
    height: 80vh;
  }

  .contact-text {
    max-width: 600px;
  }

  .support-image {
    height: 25rem;
    max-height: 100%;
    min-width: 26rem;
    max-width: 60rem;
  }
}

@media (min-width: 1024px) {
  .contact-text {
    min-width: 50%;
  }
}
</style>
