<template>
  <v-card width="100%" height="98%">
    <v-container fill-height fluid>

      <v-row >
        <v-col cols="12" md="5">
          <user-info/>
        </v-col>

      </v-row>

    </v-container>
  </v-card>
</template>

<script>
import userInfo from "./userInfo";

export default {
  name: "User",
  components: {userInfo}
}
</script>

<style scoped>

</style>