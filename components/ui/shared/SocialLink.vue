<template>
  <li :class="type">
    <a
      :href="link"
      target="_blank"
      class="flex flex-col items-center font-medium"
    >
      <fa :icon="['fab', type]" class="text-4xl mb-1" />{{ text }}</a
    >
  </li>
</template>

<script>
const SOCIAL_TYPES = [
  'meetup',
  'slack',
  'twitter',
  'google',
  'linkedin',
  'chrome',
]

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

.linkedin {
  color: #0077b5;
}

.chrome {
  color: #dd5144;
}

.github {
  color: #2c313a;
}

html.dark .meetup,
html.dark .twitter,
html.dark .google,
html.dark .slack,
html.dark .linkedin,
html.dark .chrome,
html.dark .github {
  color: #f4f4f4;
}
</style>
