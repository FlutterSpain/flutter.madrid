<template>
  <nuxt-link
    class="h-full text-center flex flex-col items-center justify-center text-gray-main-500 dark:text-gray-main-400 md:my-3"
    :to="to"
  >
    <fa class="text-xl" :icon="icon" :class="{ hidden: isOnlyText }" />
    <p class="text-xs md:text-sm mt-1">{{ title }}</p>
  </nuxt-link>
</template>

<script>
export default {
  name: 'NavBarItem',
  props: {
    title: {
      type: String,
      required: true,
    },
    icon: {
      type: String,
      required: true,
    },
    to: {
      type: String,
      required: false,
      default: '#',
    },
    isActive: {
      type: Boolean,
      required: false,
      default: false,
    },
    isOnlyText: {
      type: Boolean,
      required: false,
      default: false,
    },
  },
}
</script>
