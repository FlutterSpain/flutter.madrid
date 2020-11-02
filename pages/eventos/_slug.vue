<template>
  <div class="w-full md:h-full">
    <EventInfo :event="event" />
    <BaseFooter />
  </div>
</template>

<script>
export default {
  async asyncData({ params, $content }) {
    const slug = params.slug
    const event = await $content(`eventos/${slug}`).fetch()
    return { event }
  },
}
</script>
