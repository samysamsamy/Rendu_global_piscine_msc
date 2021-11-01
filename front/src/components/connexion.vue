<template>
  <v-card
      elevation="2"
      outlined
      tile
      width="1000px">
    <Form/>
  </v-card>
</template>

<script>
import Form from "./Form";
export default {
  name: "connexion",
  components : {
    Form
  },
  data () {
    return {
      username : ''
    }
  }
}
</script>

<style scoped>

</style>