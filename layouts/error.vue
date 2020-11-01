<template>
  <div class="h-full">
    <div class="flex flex-col items-center justify-center h-75">
      <h1 class="title mb-4 text-center dark:text-gray-main-200">
        Oops! Algo ha salido mal…
      </h1>
      <ConfusedLight v-if="$colorMode.preference === 'light'" class="h-75" />
      <ConfusedDark v-else class="h-75" />
      <Button text="Volver" class="my-5 lg:my-8" @click="goHome" />
    </div>
    <BaseFooter />
  </div>
</template>

<script>
export default {
  components: {
    ConfusedLight: () => import('@/assets/images/confused_light.svg?inline'),
    ConfusedDark: () => import('@/assets/images/confused_dark.svg?inline'),
  },
  methods: {
    goHome() {
      window.location.href = '/'
    },
  },
}
</script>

<style scoped>
.h-75 {
  height: 75%;
}
</style>
