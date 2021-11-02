<template>
  <v-card width="100%" height="98%">
    <v-container fill-height fluid>
      <v-row justify="center" align="center">
            <Form/>
      </v-row>

    </v-container>
  </v-card>
</template>

<script>
import Form from "./Form";
export default {
  name: "Loggin",
  components: {
    Form
  }
}
</script>

<style scoped>

</style>