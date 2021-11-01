<template>
  <v-card
      class="mx-auto"
      max-width="344"
      outlined
      elevation="3"
  >
    <v-list-item three-line>
      <v-list-item-content>
        <div class="text-overline mb-4">
          Informations :
        </div>
        <v-list-item-title class="text-h5 mb-1">
          {{ this.$store.state.user.username }}
        </v-list-item-title>
        <v-list-item-subtitle> {{this.$store.state.user.email}} </v-list-item-subtitle>
      </v-list-item-content>

      <v-list-item-avatar
          tile
          size="80"
      >
        <img v-bind:src=AvatarSrc>
      </v-list-item-avatar>
    </v-list-item>

    <v-card-actions>
      <v-btn v-on:click="test"
          outlined
          rounded
          text
      >
        Button
      </v-btn>
    </v-card-actions>
  </v-card>
</template>

<script>
export default {
  name: "userInfo",
  data() {
    return {
      AvatarSrc : (this.$store.state.user.imgAvatar === null) ? "https://randomuser.me/api/portraits/women/81.jpg" : this.$store.state.user.imgAvatar
    }
  },
  methods : {
    test() {
      console.log(this.$store.state.user.username)
    }
  }
}
</script>

<style scoped>

</style>