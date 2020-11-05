<template>
  <article
    class="p-6 flex flex-col lg:flex-row md:items-center lg:justify-around lg:px-10"
  >
    <TeamMemberCard
      v-for="(teamMember, index) in teamMembers"
      :key="index"
      :team-member="teamMember"
      class="mb-5 lg:w-1/4"
    />
  </article>
</template>

<script>
export default {
  name: 'TeamMembersList',
  data() {
    return {
      teamMembers: [
        {
          name: 'Alberto Chamorro',
          description: 'Frontend y Flutter developer',
          image:
            'https://pbs.twimg.com/profile_images/1324235880106807298/r_B2dZhA_400x400.jpg',
          socialItems: [
            {
              type: 'google',
              link: 'mailto:a.chamorro.ruiz@gmail.com',
              text: 'Email',
            },
            {
              type: 'twitter',
              link: 'https://twitter.com/achamorro_dev',
              text: 'Twitter',
            },
            {
              type: 'linkedin',
              link: 'https://www.linkedin.com/in/alberto-chamorro/',
              text: 'Linkedin',
            },
            {
              type: 'github',
              link: 'https://github.com/achamorro-dev',
              text: 'Github',
            },
            {
              type: 'chrome',
              link: 'https://albertochamorro.dev/#/',
              text: 'Web',
            },
          ],
        },
        {
          name: 'Jaime Blasco',
          description: 'Mobile developer',
          image:
            'https://pbs.twimg.com/profile_images/1217491855925030918/bhRY3Kkg_400x400.jpg',
          socialItems: [
            {
              type: 'google',
              link: 'mailto:jaimeblasco97@gmail.com',
              text: 'Email',
            },
            {
              type: 'twitter',
              link: 'https://twitter.com/jamesblasco',
              text: 'Twitter',
            },
            {
              type: 'linkedin',
              link: 'https://www.linkedin.com/in/jaimeblascoandres/',
              text: 'Linkedin',
            },
            {
              type: 'github',
              link: 'https://github.com/jamesblasco',
              text: 'Github',
            },
            {
              type: 'chrome',
              link: 'https://jaimeblasco.com/',
              text: 'Web',
            },
          ],
        },
        {
          name: 'Óscar Martín',
          description: 'Freelance developer',
          image:
            'https://pbs.twimg.com/profile_images/1224125449875394563/-E-GhORs_400x400.jpg',
          socialItems: [
            {
              type: 'google',
              link: 'mailto:martinm.oscar@gmail.com',
              text: 'Email',
            },
            {
              type: 'twitter',
              link: 'https://twitter.com/Oscar__Martin',
              text: 'Twitter',
            },
            {
              type: 'linkedin',
              link: 'https://www.linkedin.com/in/omartinma/',
              text: 'Linkedin',
            },
            {
              type: 'github',
              link: 'https://github.com/omartinma',
              text: 'Github',
            },
          ],
        },
      ],
    }
  },
}
</script>
