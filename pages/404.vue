<template>
  <div class="h-screen">
    <BaseHeader />
    <main class="main overflow-y-auto bg-light dark:bg-dark">
      <div class="h-full">
        <div class="flex flex-col items-center justify-center h-80">
          <h1 class="title mb-4 text-center dark:text-gray-main-200">
            Oops! Algo ha salido mal…
          </h1>
          <ConfusedLight
            v-if="$colorMode.preference === 'light'"
            class="confused-image"
          />
          <ConfusedDark v-else class="confused-image" />
          <Button text="Volver" class="my-5 lg:my-8" @click="goHome" />
        </div>
        <BaseFooter />
      </div>
    </main>
    <BottomNavBar />
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
.confused-image {
  @apply w-4/5;
  max-height: 18.75rem;
}

@media (min-width: 768px) {
  .confused-image {
    max-height: 31.25rem;
  }
}

@media (min-width: 1024px) {
  .confused-image {
    max-height: 50rem;
  }
}

.h-80 {
  height: 80vh;
}
</style>
