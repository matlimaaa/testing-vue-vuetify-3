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
