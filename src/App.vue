<template>
  <div>
    <router-view/>
  </div>
</template>

<script>
import Registration from './components/Registration.vue';
import Authorization from './components/Authorization.vue';
import Cabinet from './components/Cabinet.vue';


export default {
  components:{
Registration, Authorization, Cabinet
  }
}
</script>

<style>
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
</style>
