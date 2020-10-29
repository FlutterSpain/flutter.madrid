<template>
  <header class="header bg-light dark:bg-dark">
    <Logo />
    <ColorSwitch />
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
