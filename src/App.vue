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
  margin: 0px;
</style>
