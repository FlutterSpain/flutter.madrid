<template>
  <div class="navbar bg-light dark:bg-gray-main-500">
    <NavBarItem title="Inicio" icon="home" to="/" />
    <NavBarItem title="Eventos" icon="calendar" to="/eventos" />
    <NavBarItem title="Equipo" icon="users" to="/equipo" />
    <NavBarItem title="Contacto" icon="paper-plane" to="/contacto" />
  </div>
</template>

<style scoped>
.navbar {
  @apply flex align-middle justify-around fixed w-full bottom-0;
  height: var(--navbar);
  box-shadow: 0px 0px 4px rgba(0, 0, 0, 0.1);
}

@media (min-width: 768px) {
  .navbar {
    display: none;
  }
}
</style>
