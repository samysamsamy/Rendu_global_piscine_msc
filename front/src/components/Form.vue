<template>
  <v-container>
    <v-layout wrap>
      <v-flex sm12 md6 offset-md3>
        <v-card elevation="4" light tag="section">
          <v-card-title>
            <v-layout align-center justify-space-between>
              <h3 class="headline">
                {{ platformName }}
              </h3>
            </v-layout>
          </v-card-title>
          <v-divider></v-divider>
          <v-card-text>
            <p>Sign in with your username and email:</p>
            <v-form>
              <v-text-field
                  outline
                  label="Username"
                  type="text"
                  v-model="username"></v-text-field>
              <v-text-field
                  outline
                  hide-details
                  label="Email"
                  type="email"
                  v-model="email"></v-text-field>
            </v-form>
          </v-card-text>
          <v-divider></v-divider>
          <v-card-actions :class="{ 'pa-3': $vuetify.breakpoint.smAndUp }">
            <v-btn color="info" flat @click="SignUp">
              Register
            </v-btn>
            <v-spacer></v-spacer>
            <v-btn color="info" :large="$vuetify.breakpoint.smAndUp">
              <v-icon left @click="SignIn">mdi-lock</v-icon>
              Login
            </v-btn>
          </v-card-actions>
        </v-card>
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script>
export default {
  data () {
    return {
      darkTheme: true,
      platformName: 'Pointeuse',
      email: null,
      username: null
    }
  },
  methods : {
     async SignIn() {
      console.log("pass")
       let response = await fetch("http://localhost:4000/api/users?email=" + this.email + "&username=" + this.username, { method: 'GET',}).then((res) => {
         return res.json()
      }).catch((err) => {
        console.log(err)
      })
       if (response.data.length !== 1)
         return false
       else {
         this.$store.commit('FillUserInfo', {id : response.data[0].id, username : response.data[0].username, email : response.data[0].email})
         console.log(this.$store.state.user.username)
         await this.$router.push('/User')
       }
    },
    SignUp() {

    }
  }
}
</script>

<style scoped>
.v-btn, .v-card {
  border-radius :4px
}
.v-card__title {
  text-transform: uppercase
}
</style>