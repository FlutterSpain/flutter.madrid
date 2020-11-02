<template>
  <li :class="type">
    <a :href="link" target="_blank" class="flex flex-col items-center">
      <fa :icon="['fab', type]" class="text-4xl" />{{ text }}</a
    >
  </li>
</template>

<script>
const SOCIAL_TYPES = ['meetup', 'slack', 'twitter', 'gmail']

export default {
  name: 'SocialLink',
  props: {
    link: {
      type: String,
      required: true,
    },
    type: {
      type: String,
      required: true,
      validator: (value) => {
        return SOCIAL_TYPES.includes(value)
      },
    },
    text: {
      type: String,
      required: true,
    },
  },
}
</script>

<style scoped>
.meetup {
  color: #ed1c40;
}

.twitter {
  color: #00acee;
}

.google {
  color: #db3236;
}

.slack {
  color: #611f69;
}

html.dark .slack {
  color: #2eb67d;
}
</style>
