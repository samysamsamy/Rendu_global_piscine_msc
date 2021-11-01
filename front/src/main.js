import Vue from 'vue'
import App from './App.vue'
import store from "./store/Store";
import vuetify from './plugins/vuetify'
import VueRouter from 'vue-router'
import connexion from "./components/connexion";
import User from "./components/User";
import Login from "./components/Login";
Vue.config.productionTip = false

Vue.use(VueRouter)

const routes = [
  { path: '/connexion', component: connexion },
  { path: '/User', component: User },
  { path: '/Login', component: Login },
]

const router = new VueRouter({
  routes // short for `routes: routes`
})

new Vue({
  render: h => h(App),
  vuetify,
  router,
  store: store
}).$mount('#app')
