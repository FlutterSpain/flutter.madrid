<template>
  <article
    v-if="event"
    class="event-container p-6 flex flex-col lg:flex-row-reverse lg:items-start lg:justify-between md:pl-10 lg:my-8"
  >
    <div class="event-content">
      <img :src="event.image" class="event-image rounded-lg mb-3" />
    </div>

    <div class="event-content">
      <span
        class="block font-medium text-xl md:text-3xl text-blue-main-500 dark:text-blue-main-400"
        >{{ $moment(event.date).format('dddd, DD MMM YYYY HH:mm') }}</span
      >

      <h1 class="title dark:text-gray-main-200">
        {{ event.title }}
      </h1>

      <nuxt-content :document="event" />

      <div
        class="mt-8 flex flex-col items-center lg:flex-row lg:justify-start lg:items-end"
      >
        <Button :text="eventButtonText" class="block mr-2" @click="goToEvent" />
        <OutlineLink
          v-if="event.videoLink"
          text="Ver vídeo"
          class="outline-link mr-2"
          :link="event.videoLink"
          :icon="['fab', 'youtube']"
        />
        <OutlineLink
          v-if="event.sourceLink"
          text="Ver código"
          class="outline-link mr-2"
          :link="event.sourceLink"
          :icon="['fab', 'github']"
        />
      </div>
    </div>
  </article>
</template>

<script>
export default {
  name: 'EventInfo',
  props: {
    event: {
      type: Object,
      default: undefined,
    },
  },
  computed: {
    isPastEvent() {
      const now = this.$moment()
      return this.$moment(this.event.date).isAfter(now)
    },
    eventButtonText() {
      return this.isPastEvent ? 'Asistiré' : 'Ver evento'
    },
  },
  methods: {
    goToEvent() {
      window.location.href = this.event.eventLink
    },
  },
}
</script>

<style scoped>
.event-container {
  min-height: 70vh;
}
.outline-link {
  @apply mt-2;
  max-width: 12.5rem;
}
@media (min-width: 1024px) {
  .event-content {
    max-width: 50%;
  }
  .event-image {
    max-width: 75rem;
    width: 100%;
  }
}
</style>
