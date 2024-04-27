<template>
  <v-app>

    <v-navigation-drawer v-model="isDrawerOpen">
      <v-list>
        <v-list-subheader>MENU</v-list-subheader>

        <v-list-item prepend-icon="mdi-home">Home</v-list-item>
        <v-list-item prepend-icon="mdi-account">Usuários</v-list-item>
        <v-list-item prepend-icon="mdi-clock">Horários</v-list-item>

      </v-list>
    </v-navigation-drawer>

    <v-app-bar flat>
      <v-app-bar-nav-icon @click="isDrawerOpen = !isDrawerOpen"></v-app-bar-nav-icon>

      <v-app-bar-title>
        Testing Vuetify 3
      </v-app-bar-title>

      <template #append>
        <v-btn icon class="mr-3">
          <v-badge dot color="info">
            <v-icon icon="mdi-bell-outline" size="x-large"></v-icon>
          </v-badge>
        </v-btn>

        <v-menu>
          <template #activator="{ props }">
            <v-avatar v-bind="props">
              <v-img src="https://cdn.vuetifyjs.com/images/cards/docks.jpg"></v-img>
            </v-avatar>
          </template>
          
          <v-card>
            <v-list :lines="false" density="compact" nav>
              <v-list-item link prepend-icon="mdi-account">
                <v-list-item-title>Perfil</v-list-item-title>
              </v-list-item>

              <v-list-item link prepend-icon="mdi-cog">
                <v-list-item-title>Configurações</v-list-item-title>
              </v-list-item>
            </v-list>
          </v-card>
        </v-menu>
      </template>
    </v-app-bar>
    <v-main>
      <v-container>
        <h1>Dashboard</h1>
        
      </v-container>
    </v-main>

    <AppFooter />
  </v-app>
</template>

<script setup>
import { ref } from 'vue';

  const isDrawerOpen = ref(false)

  // return {
  //   isDrawerOpen,
  // }
</script>
