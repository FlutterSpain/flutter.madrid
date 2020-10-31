<template>
  <div>
    <nuxt-link to="/">
      <img
        v-if="$colorMode.preference === 'light'"
        src="@/assets/images/logo_flutter_madrid.png"
        alt="Logo Flutter Madrid"
        class="transition w-24 p-2 md:p-0"
      />
      <img
        v-else
        src="@/assets/images/logo_flutter_madrid_blanco.png"
        alt="Logo Flutter Madrid blanco"
        class="transition w-24 p-2 md:p-0"
      />
    </nuxt-link>
  </div>
</template>
