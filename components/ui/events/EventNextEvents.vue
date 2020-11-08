<template>
  <article
    v-show="nextEvents && nextEvents.length > 0"
    class="px-6 py-10 md:px-10 bg-blue-main-500 dark:bg-blue-main-700"
  >
    <h2 class="subtitle text-center md:text-left dark:text-gray-main-200">
      Próximos eventos
    </h2>

    <ul
      class="flex flex-col items-center justify-between lg:flex-row lg:items-start md:mt-5"
    >
      <li v-for="event in nextEvents" :key="event.slug" class="lg:w-1/3">
        <EventSmallCard
          :event="event"
          class="mt-8 lg:mx-4"
          @click="goToEvent(event.slug)"
        />
      </li>
    </ul>
  </article>
</template>

<script>
export default {
  name: 'EventNextEvents',
  async fetch() {
    const events = await this.$content('eventos')
      .sortBy('date', 'desc')
      .without('body')
      .fetch()
    const now = this.$moment()

    this.nextEvents = events.filter((event) =>
      this.$moment(event.date).isAfter(now)
    )
  },
  data() {
    return {
      nextEvents: [],
    }
  },
  mounted() {
    this.$fetch()
  },
  methods: {
    goToEvent(eventSlug) {
      window.location.href = `/eventos/${eventSlug}`
    },
  },
}
</script>

<style scoped>
.subtitle {
  color: white;
}
</style>
