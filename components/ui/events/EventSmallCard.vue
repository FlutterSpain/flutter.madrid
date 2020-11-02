<template>
  <div class="card dark:bg-gray-main-500" @click="$emit('click')">
    <div class="card-header">
      <div>
        <span
          class="text-gray-main-500 text-xs md:text-lg dark:text-gray-main-400"
        >
          {{ $moment(event.date).format('ddd, DD MMM YYYY HH:mm') }}
        </span>
      </div>
      <img :src="event.image" :alt="event.altImage" class="card-image" />
    </div>
    <h2
      class="text-gray-main-700 font-medium md:text-2xl dark:text-gray-main-300"
    >
      {{ event.title }}
    </h2>
    <p class="paragraph mt-3 dark:text-gray-main-400">
      {{ event.description }}
    </p>
  </div>
</template>

<script>
export default {
  name: 'EventSmallCard',
  props: {
    event: {
      type: Object,
      required: true,
    },
  },
}
</script>

<style scoped>
.card {
  @apply p-4 rounded-lg border border-gray-main-400;
  max-width: 37rem;
  box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
}

.card-header {
  @apply flex items-end justify-between;
}

.card-image {
  @apply rounded-lg w-1/2 rounded-lg border border-gray-main-400;
  max-width: 15rem;
  transform: translateY(-1.875rem);
  box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
}

.card:hover,
.card:hover .card-image {
  @apply cursor-pointer border-blue-main-500;
  box-shadow: 0px 8px 4px rgba(0, 0, 0, 0.25);
}
</style>
