<template>
  <article class="px-6 py-10 md:px-10">
    <h2 class="subtitle text-center md:text-left dark:text-gray-main-200">
      Eventos anteriores
    </h2>

    <ul
      class="flex flex-col items-center flex-wrap justify-between lg:flex-row lg:items-start md:mt-5"
    >
      <li v-for="event in allEvents" :key="event.slug" class="lg:w-1/3">
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
  name: 'EventAllEvents',
  async fetch() {
    const events = await this.$content('eventos')
      .sortBy('date', 'desc')
      .without('body')
      .fetch()
    const now = this.$moment()

    this.allEvents = events.filter((event) =>
      this.$moment(event.date).isBefore(now)
    )
  },
  data() {
    return {
      allEvents: [],
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
