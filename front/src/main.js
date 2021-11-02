import Vue from 'vue'
import App from './App.vue'
import store from "./store/Store";
import vuetify from './plugins/vuetify'
import VueRouter from 'vue-router'
import connexion from "./components/connexion";
import User from "./components/User";
import Login from "./components/Login";
import Home from "./components/Home";
import Charts from "./components/Charts";
Vue.config.productionTip = false

Vue.use(VueRouter)

const routes = [
  { path: '/connexion', component: connexion },
  { path: '/', component: Home },
  { path: '/User', component: User },
  { path: '/Login', component: Login },
  { path: '/Chart', component: Charts },
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
