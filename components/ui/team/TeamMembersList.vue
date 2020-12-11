<template>
  <article
    class="p-6 flex flex-col items-center wrapper lg:px-10 lg:grid lg:justify-center lg:grid-cols-2 lg:gap-4"
  >
    <TeamMemberCard
      v-for="(teamMember, index) in teamMembers"
      :key="index"
      :team-member="teamMember"
      class="mb-5"
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
            'https://res.cloudinary.com/dqz435aom/image/upload/v1607355256/team-members/alberto-chamorro_zwbp7v.jpg',
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
          name: 'Ana Polo',
          description: 'Mobile developer',
          image:
            'https://res.cloudinary.com/dqz435aom/image/upload/c_scale,w_400/v1607529928/team-members/0_dmsy9g.jpg',
          socialItems: [
            {
              type: 'google',
              link: 'mailto:ana.polo.sanchez1991@gmail.com',
              text: 'Email',
            },
            {
              type: 'twitter',
              link: 'https://twitter.com/AnaPolo_dev',
              text: 'Twitter',
            },
            {
              type: 'linkedin',
              link: 'https://www.linkedin.com/in/ana-polo-sánchez/',
              text: 'Linkedin',
            },
            {
              type: 'github',
              link: 'https://github.com/AnnaPS',
              text: 'Github',
            },
          ],
        },
        {
          name: 'Jaime Blasco',
          description: 'Mobile developer',
          image:
            'https://res.cloudinary.com/dqz435aom/image/upload/v1607355255/team-members/jaime-blasco_gigwmu.jpg',
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
            'https://res.cloudinary.com/dqz435aom/image/upload/v1607355256/team-members/oscar-martin_m7oo3s.jpg',
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
