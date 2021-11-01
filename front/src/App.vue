<template>
  <v-app>
    <v-main>
      <v-container fluid >
        <div style="width: 100vw;">
        <v-row>
          <v-col cols="12" md="2">
            <navigation/>
          </v-col>
          <v-col cols="12" md="10">
            <router-view></router-view>
          </v-col>

        </v-row>
        </div>
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
