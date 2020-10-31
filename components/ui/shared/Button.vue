<template>
  <button class="button" @click="$emit('click')">
    {{ text }}
  </button>
</template>

<script>
export default {
  name: 'Button',
  props: {
    text: {
      type: String,
      required: true,
    },
  },
}
</script>
