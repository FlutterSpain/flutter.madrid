<template>
  <article
    class="contact p-6 flex flex-col md:flex-row-reverse md:items-center md:justify-between md:pl-10 lg:my-8 wrapper"
  >
    <TeamLight
      v-if="$colorMode.preference !== 'dark'"
      class="support-image mb-3"
    />
    <TeamDark v-else class="support-image mb-3" />

    <div class="contact-text text-center md:text-left">
      <h1 class="title dark:text-gray-main-200">Equipo</h1>

      <p class="paragraph mt-5 text-left dark:text-gray-main-400">
        En 2020, un comando compuesto por cuatro de los mejores soldados del
        ejército Flutter, fueron encarcelados por un Widget que no habían
        testeado. No tardaron en fugarse de la prisión en la que se encontraban
        recluidos. Hoy, buscados todavía por el gobierno flutterista, sobreviven
        como soldados del código. Si usted tiene algún problema y se los
        encuentra quizá pueda contratarlos…
      </p>
      <p class="paragraph mt-5 text-left dark:text-gray-main-400">
        Ellos son... ¡El equipo Flutter Madrid!
      </p>
    </div>
  </article>
</template>

<script>
export default {
  name: 'TeamInfo',
  components: {
    TeamLight: () => import('@/assets/images/team_light.svg?inline'),
    TeamDark: () => import('@/assets/images/team_dark.svg?inline'),
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
    height: 60vh;
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
</style>
