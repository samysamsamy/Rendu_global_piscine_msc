<template>
  <v-card width="100%" height="98%">
    <v-container fill-height fluid>
      <div class="centerVertical">
        <v-row justify="center" align="center">
          <v-card-title> {{this.$store.state.user.isLoggedIn === true ? "Vous êtes connecté" : "Veuillez vous connecter pour accéder à l'application"}}</v-card-title>
        </v-row>
        <v-row justify="center" align="center">
        <v-card-actions v-if="this.$store.state.user.isLoggedIn === false">
            <v-btn v-on:click="Redirect">Se connecter</v-btn>
          </v-card-actions>
          <v-card-actions v-else>
            <v-btn v-on:click="Redirect">Accéder à mon profil</v-btn>
            <v-btn v-on:click="Disconnexion">Se déconnecter</v-btn>
          </v-card-actions>
      </v-row>
      </div>
    </v-container>
  </v-card>
</template>

<script>

export default {
  name: "Home",
  components : {
  },
  methods: {
    Redirect() {
      if (this.$store.state.user.isLoggedIn === true) {
        this.$router.push("/User")
      } else {
        this.$router.push("/Login")
      }
    },
    Disconnexion() {
      this.$store.commit("DisconnectUser")
      this.$router.push("/Login")

    }
  }
}
</script>

<style scoped>
.centerVertical{
  margin: auto;
}

</style>