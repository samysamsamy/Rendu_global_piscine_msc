<template>
  <v-card width="100%" height="98%">
    <v-container fill-height fluid>

        <v-col cols="12" md="6" style="border: 1px" styl>
          <v-row>
            <user-info/>
          </v-row>
          <v-row>
            <user-info/>
          </v-row>
        </v-col>

        <v-col cols="12" md="6">
            <WorkingTimes/>
        </v-col>
    </v-container>
  </v-card>
</template>

<script>
import userInfo from "./userInfo";
import WorkingTimes from "./WorkingTimes";

export default {
  name: "User",
  components: {
    userInfo,
    WorkingTimes}
}
</script>

<style scoped>
.Column{

}
</style>