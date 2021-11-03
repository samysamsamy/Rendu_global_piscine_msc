<template>
  <v-app>
    <navigation/>
    <v-main>
      <v-container fluid fill-height >
        <v-row class="fill-height">
          <v-col>
            <v-sheet class="fill-height" elevation="10">
              <router-view></router-view>
            </v-sheet>
          </v-col>
        </v-row>
      </v-container>
    </v-main>
  </v-app>
</template>

<script>
import navigation from "./components/navigation";
export default {
  name: 'App',

  components: {
    navigation
  },

  data: () => ({
    //
  }),
};
</script>
