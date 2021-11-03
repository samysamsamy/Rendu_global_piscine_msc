<template>
    <v-container fill-height fluid align="center" class="justify-center">
        <v-sheet align="center" color="white" elevation="5" height="30%" width="30%">
          <v-col justify="space-between">
            <p>{{this.$store.state.user.isLoggedIn === false ? "Veuillez vous connecter" : "Bonjour " + this.$store.state.user.username}}</p>
            <v-btn style="margin: 10px" v-on:click="Redirect">{{this.$store.state.user.isLoggedIn === false ? "Se connecter" : "Aller sur votre page utilisateur"}}</v-btn>
            <v-btn style="margin: 10px" v-if="this.$store.state.user.isLoggedIn" v-on:click="Disconnexion"> Déconnexion </v-btn>
            <v-btn style="margin: 10px" v-if="this.$store.state.user.isLoggedIn" v-on:click="Pointer"> Pointer </v-btn>
          </v-col>
        </v-sheet>
    </v-container>
</template>

<script>

export default {
  name: "Home",
  components : {
  },
  data () {
    return {
      knowledge : 33
    }
  },
  methods: {
    Pointer() {
      if (this.$store.state.user.isConnected === false)
      {
        this.$store.commit("pointer")
      }
    },
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
.rowmargin {
}
.sheetstyle {
  width: 40%;
  height: 150px;
  margin: 50px;
}


</style>