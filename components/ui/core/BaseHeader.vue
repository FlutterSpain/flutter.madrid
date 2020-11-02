<template>
  <header class="header dark:bg-dark md:pt-4 md:px-10">
    <Logo />
    <div class="md:w-3/4 lg:w-1/2 flex justify-end items-center">
      <NavBar />
      <ColorSwitch class="p-2 md:ml-6 xl:ml-0" />
    </div>
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
  @apply flex items-center justify-between p-4 bg-white sticky top-0;
  height: var(--header-mobile);
  z-index: 10;
}

@media (min-width: 768px) {
  .header {
    height: var(--header);
  }
}
</style>
