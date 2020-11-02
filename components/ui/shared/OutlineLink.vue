<template>
  <a
    href="#"
    class="outline-button text-center flex flex-row items-center justify-center"
  >
    <fa v-if="icon" :icon="icon" class="text-2xl mr-2" />
    <p>{{ text }}</p>
  </a>
</template>

<script>
export default {
  name: 'OutlineLink',
  props: {
    text: {
      type: String,
      required: true,
    },
    icon: {
      type: Array,
      required: false,
      default: () => [],
    },
  },
}
</script>
