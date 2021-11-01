<template>
  <v-card
      class="mx-auto "
      height="100vh"
      width="100vw">
  <navigation/>
  </v-card>
</template>

<script>
import navigation from "./navigation";

export default {
  name: "Home",
  components : {
    navigation
  }
}
</script>

<style scoped>

</style>