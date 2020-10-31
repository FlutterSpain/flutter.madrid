<template>
  <div class="flex flex-col justify-center items-center p-6 w-3/4">
    <fa
      v-if="icon"
      :icon="icon"
      class="text-blue-main-500 text-4xl md:text-5xl"
    />
    <p v-if="title" class="font-bold mt-3 dark:text-gray-main-200">
      {{ title }}
    </p>
    <p v-if="text" class="paragraph text-center mt-1 dark:text-gray-main-400">
      {{ text }}
    </p>
  </div>
</template>

<script>
export default {
  name: 'IconText',
  props: {
    icon: {
      type: String,
      required: false,
      default: '',
    },
    title: {
      type: String,
      required: false,
      default: '',
    },
    text: {
      type: String,
      required: false,
      default: '',
    },
  },
}
</script>
