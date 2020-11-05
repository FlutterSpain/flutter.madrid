<template>
  <div class="flex flex-col-reverse justify-between items-center">
    <div class="text-center w-3/4 lg:w-full">
      <h2 class="title text-gray-main-500 dark:text-gray-main-300">
        {{ teamMember.name }}
      </h2>
      <p
        class="text-2xl font-medium text-gray-main-500 lg:text-xl dark:text-gray-main-400"
      >
        {{ teamMember.description }}
      </p>
      <ul class="mt-5 mb-10 flex flex-row justify-between lg:justify-around">
        <SocialLink
          v-for="(socialItem, index) in teamMember.socialItems"
          :key="index"
          :link="socialItem.link"
          :type="socialItem.type"
          :text="socialItem.text"
        />
      </ul>
    </div>
    <div>
      <img
        :src="teamMember.image"
        :alt="`Foto de ${name}`"
        class="team-image"
      />
    </div>
  </div>
</template>

<script>
export default {
  name: 'TeamMemberCard',
  props: {
    teamMember: {
      type: Object,
      required: true,
    },
  },
}
</script>

<style scoped>
.team-image {
  @apply rounded-full;
  max-height: 12.5rem;
}

@media (min-width: 1024px) {
  .title {
    @apply text-4xl;
  }
}
</style>
