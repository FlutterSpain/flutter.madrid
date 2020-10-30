<template>
  <div class="hidden md:flex w-1/2 align-middle justify-around">
    <NavBarItem title="Inicio" icon="home" to="/" :is-only-text="true" />
    <NavBarItem
      title="Eventos"
      icon="calendar"
      to="/eventos"
      :is-only-text="true"
    />
    <NavBarItem title="Equipo" icon="users" to="/equipo" :is-only-text="true" />
    <NavBarItem
      title="Contacto"
      icon="paper-plane"
      to="/contacto"
      :is-only-text="true"
    />
  </div>
</template>
