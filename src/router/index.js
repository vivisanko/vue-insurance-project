import Vue from 'vue';
import Router from 'vue-router';


Vue.use(Router);

import Registration from '../components/Registration.vue';
import Authorization from '../components/Authorization.vue';
import Cabinet from '../components/Cabinet.vue';


export default new Router({
  routes: [{
      path: '/',
      component: Authorization
    },
    {
      path: '/registration',
      component: Registration
    },
    {
      path: '/authorization',
      component: Authorization
    },
    {
      path: '/cabinet',
      component: Cabinet
    }
  ]
});
