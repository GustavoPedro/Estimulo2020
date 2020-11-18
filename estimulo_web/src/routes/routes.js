import VueRouter from 'vue-router';
import Fraquezas from '../pages/Fraquezas/List/Fraquezas.vue'
import Details from '../pages/Fraquezas/Details/Details.vue'

const router = new VueRouter({
  routes: [
    { path: '/', component: Fraquezas },
    { path: '/details', component: Details },
  ]
})

export default router;