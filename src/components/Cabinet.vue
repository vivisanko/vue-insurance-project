<template>
  <div>
<div v-for="item in insuranceTypes" v-bind:key="item._id">
<img v-bind:src="item.img"/>
  <h1>{{ item.title }}</h1>
  <p>{{ item.description }}</p>
</div>
</div>
</template>


<script>
export default {
  data() {
    return {
      insuranceTypes: []
    }
  },
  created: function() {
    this.getData()
  },
  methods: {
    getData: function() {
      var vm = this
      var userToken = localStorage.getItem('token-sirion')
      var userHeaders = new Headers()
      userHeaders.append('token-sirion', userToken)
      console.log(userToken)
      console.log(typeof(userToken))

      var userInit = {
        method: 'GET',
        headers: {
          'token-sirion': userHeaders.get('token-sirion')
        }
      }
      console.log(userInit)
      fetch('https://test-task-api.insirion.ru/user/insurance', userInit)
        .then(function(response) {
          console.log(response)
          return response.json()
        })
        .then(function(data) {
            data.forEach(function(item) {
              vm.insuranceTypes.push(item)
            })
            console.log(vm.insuranceTypes)
          }

        )
    }
  }

}
</script>

<style scoped>
font-family: 'Avenir',
Helvetica,
Arial,
sans-serif;
text-align: center;
color: #2c3e50;
margin-top: 60px;
</style>
