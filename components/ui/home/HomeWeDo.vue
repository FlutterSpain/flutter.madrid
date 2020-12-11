<template>
  <article class="bg-gray-main-300 dark:bg-gray-main-500">
    <div class="px-6 py-10 md:px-10 wrapper">
      <h2 class="subtitle text-center md:text-left dark:text-gray-main-200">
        ¿Qué hacemos?
      </h2>

      <div
        class="flex flex-col items-center md:flex-row md:items-start md:mt-5"
      >
        <IconText
          icon="chalkboard-teacher"
          title="Meetups"
          text="Charlas mensuales con temas de interés para la comunidad y la última actualidad."
        />
        <IconText
          icon="question-circle"
          title="Soporte"
          text="Cuéntanos tu duda o problema y buscamos una solución juntos."
        />
        <IconText
          icon="laptop-code"
          title="Talleres"
          text="Potenciamos el uso de Flutter realizando talleres presenciales."
        />
        <IconText
          icon="graduation-cap"
          title="Formación"
          text="Colaboramos con empresas y escuelas para enseñar a más personas."
        />
      </div>
    </div>
  </article>
</template>

<script>
export default {
  name: 'HomeWeDo',
}
</script>
