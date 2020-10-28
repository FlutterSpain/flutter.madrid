<template>
  <div>
    <img
      v-if="$colorMode.preference === 'light'"
      src="@/assets/images/logo_flutter_madrid.png"
      width="100"
      alt="Logo Flutter Madrid"
    />
    <img
      v-else
      src="@/assets/images/logo_blanco_flutter_madrid.png"
      width="100"
      alt="Logo Flutter Madrid blanco"
    />
  </div>
</template>
