<template>
<div>
  <div class="main-base">
    <div v-for="item in insuranceTypes" v-bind:key="item._id" v-bind:class="{ 'selected': active, 'Rectangle-13': origin }" v-on:click="isActive">
      <img v-bind:src=" item.img " />
      <p class='layer'>{{ item.title }}</p>
      <p>{{ item.description }}</p>
    </div>
  </div>
</div>
</template>


<script>
export default {
  data() {
    return {
      active: false,
      origin: true,
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
    },
    isActive: function(event) {
      console.log(event.currentTarget)
      console.log(event.target)
      this.active = true
    }
  }
}
</script>

<style scoped>
.main-base {
  width: 95vw;
  min-height: 90vh;
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
  align-content: center;
  flex-wrap: wrap;
}

.Rectangle-13 {
  width: 160px;
  height: 192px;
  border-radius: 10px;
  background-color: #ffffff;
  box-shadow: 0 0 20px 0 rgba(89, 159, 246, 0.3);
  margin: 20px 20px 20px 20px;
  text-align: center;
  transition: all 0.5s ease-out 0.5s;
}

.selected {
  width: 160px;
  height: 192px;
  border-radius: 10px;
  background-color: #ffffff;
  box-shadow: 0 0 20px 0 rgba(89, 159, 246, 0.6);
  margin: 20px 20px 20px 20px;
  text-align: center;
  transition: all 0.5s ease-out 0.5s;
}

.Rectangle-13:hover>img {
  transform: scale(1.2);
}

img {
  width: 160px;
  height: 95px;
  transition: all 0.5s ease-out 0.5s;
  transform-origin: 50% 100%;
}

p.layer {
  display: inline-block;
  width: auto;
  height: 21px;
  font-family: FiraSans;
  font-size: 18px;
  line-height: 1.17;
  text-align: left;
  color: #3c3c3c;
  margin: auto;
  margin-top: 15px;
  padding: 0px;
}

p {
  display: inline-block;
  width: 140px;
  height: 36px;
  font-family: FiraSans;
  font-size: 12px;
  line-height: 1.5;
  text-align: center;
  color: #999999;
  margin: auto;
  margin-top: 10px;
  padding: 0px;
}
</style>
