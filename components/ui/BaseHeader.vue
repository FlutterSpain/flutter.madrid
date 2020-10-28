<template>
  <header class="header">
  </header>
</template>

<script>
export default {
  name: 'BaseHeader',
  data() {
    return {}
  },
}
</script>

<style scoped>
.header {
  @apply flex items-center justify-between p-4;

  height: var(--header);
}
</style>
