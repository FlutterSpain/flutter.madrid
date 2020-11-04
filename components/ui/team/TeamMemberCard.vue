<template>
  <div class="flex flex-col md:flex-row justify-between items-center">
    <div>
      <h2>{{ teamMember.name }}</h2>
      <p>{{ teamMember.description }}</p>
      <ul class="mt-10 flex flex-col lg:flex-row justify-around">
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
      <img :src="teamMember.image" :alt="`Foto de ${name}`" />
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
