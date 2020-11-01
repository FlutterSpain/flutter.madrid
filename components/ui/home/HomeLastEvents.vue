<template>
  <article class="px-6 py-10 md:px-10">
    <h2 class="subtitle text-center md:text-left dark:text-gray-main-200">
      Últimos eventos
    </h2>

    <ul
      class="flex flex-col items-center justify-between lg:flex-row lg:items-start md:mt-5"
    >
      <li v-for="event in lastEvents" :key="event.slug">
        <EventSmallCard :event="event" class="mt-8 lg:mx-4" />
      </li>
    </ul>
  </article>
</template>

<script>
export default {
  name: 'HomeLastEvents',
  async fetch() {
    this.lastEvents = await this.$content('eventos')
      .sortBy('date', 'desc')
      .limit(3)
      .fetch()
  },
  data() {
    return {
      lastEvents: [],
    }
  },
  mounted() {
    this.$fetch()
  },
}
</script>
