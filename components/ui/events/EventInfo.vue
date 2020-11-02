<template>
  <article
    v-if="event"
    class="p-6 flex flex-col lg:flex-row-reverse lg:items-start lg:justify-between md:pl-10 lg:my-8"
  >
    <div class="event-content">
      <img :src="event.image" class="event-image rounded-lg mb-3" />
    </div>

    <div class="event-content">
      <h1 class="title text-center lg:text-left dark:text-gray-main-200">
        {{ event.title }}
      </h1>

      <nuxt-content :document="event" />

      <div
        class="mt-5 flex flex-col items-center lg:flex-row lg:justify-start lg:items-end"
      >
        <Button :text="eventButtonText" class="block mr-2" @click="goToEvent" />
        <OutlineLink
          v-if="event.videoLink"
          text="Ver vídeo"
          class="outline-link mr-2"
          :icon="['fab', 'youtube']"
        />
        <OutlineLink
          v-if="event.github"
          text="Ver código"
          class="outline-link mr-2"
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
