<template>
  <div class="card">
    <div class="card-header">
      <div>
        <span class="text-gray-main-500 text-xs">{{
          $moment(event.date).format('ddd, DD MMMM YYYY HH:mm')
        }}</span>
      </div>
      <img :src="event.image" :alt="event.altImage" class="card-image" />
    </div>
    <h2 class="text-gray-main-700 font-medium">{{ event.title }}</h2>
    <p class="paragraph mt-3">
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
  @apply p-6 rounded-lg border border-gray-main-400;
}

.card:hover {
  @apply cursor-pointer border-blue-main-500;
}

.card-header {
  @apply flex items-end justify-between;
}

.card-image {
  @apply rounded-lg w-1/2;
}
</style>
