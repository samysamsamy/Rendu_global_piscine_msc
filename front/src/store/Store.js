import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

const store = new Vuex.Store({
    state: {
        count: 0,
        showSideBar: false,
        user : {
            isLoggedIn: false,
            imgAvatar: "",
            username : "",
            isConnected : false,
            email : "",
            id : -1
        }
    },
    mutations: {
        increment (state) {
            state.count++
        },
        changestate (state) {
            state.showSideBar = true
        },
        FillUserInfo(state, param) {
            console.log(param)
            state.user.id = param.id
            state.user.username = param.username
            state.user.email = param.email
            state.user.isLoggedIn = true
        }
    }
})

export default store;