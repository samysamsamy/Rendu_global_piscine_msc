<template>
  <v-card height="97vh"
  max-width="13vw"
  min-width="13vw">
    <v-navigation-drawer
        absolute
        permanent
        left
    >
      <template v-slot:prepend>
        <v-list-item two-line>
          <div v-if="id === -1">
            <v-icon>mdi-account</v-icon>
          </div>
          <div v-else-if="imgAvatar !== ''">
            <v-list-item-avatar>
              <img v-bind:src="imgAvatar">
            </v-list-item-avatar>
          </div>
          <div v-else>
            <v-icon>mdi-account</v-icon>
          </div>


          <v-list-item-content>
            <v-list-item-title> {{getUserName}}</v-list-item-title>
            <v-list-item-subtitle> {{IsLoged}} </v-list-item-subtitle>
          </v-list-item-content>
        </v-list-item>
      </template>

      <v-divider></v-divider>

      <v-list dense>
        <v-list-item
            v-for="item in items"
            :key="item.title"
            @click="ChangeRoute(item.to)"
        >
          <v-list-item-icon>
            <v-icon>{{ item.icon }}</v-icon>
          </v-list-item-icon>

          <v-list-item-content>
            <v-list-item-title>{{ item.title }}</v-list-item-title>
          </v-list-item-content>
        </v-list-item>
      </v-list>
    </v-navigation-drawer>
  </v-card>
</template>

<script>
export default {
  computed : {
    getUserName() {
      return (this.$store.state.user.username === "") ? "Not connected" : this.$store.state.user.username
    },
    IsLoged() {
      return (this.$store.state.user.isLoggedIn === false) ? "Not connected" : "connecté(e)"
    }
  },
  data () {
    return {
      imgAvatar : this.$store.state.user.imgAvatar,
      id : this.$store.state.user.id,
      items: [
        { title: 'Home', icon: 'mdi-home-city', to: "/connexion" },
        { title: 'My Account', icon: 'mdi-account', to: "/User" },
        { title: 'Login', icon: 'mdi-account', to: "/Login" },
      ],
    }
  },
  methods : {
    ChangeRoute(to) {
      this.$router.push(to)
    }
  }
}
</script>

<style scoped>

</style>