<template>
<div>
  <div>
    <p>Логин или e-mail</p>
    <input v-model="email" />
    <p>Придумайте пароль</p>
    <input v-model="passwordOriginal" />
    <p>Повторите пароль</p>
    <input v-model="password" />
    <p>Введите телефон</p>
    <input v-model="phone" />
    <button v-on:click="doRegistration">Регистрация</button>
    <button v-on:click="goToAuthorization">У меня есть аккаунт</button>
    <p>Единый номер Azur:+375 (29) 123-45-67</p>
  </div>
  <div>
    <h1>Добро пожаловать в Azur.</h1>
    <p>Для доступа в ваш аккаунт, авторизируйтесь.</p>
  </div>
</div>
</template>

<script>
export default {
  data() {
    return {
      email: 'anonim',
      passwordOriginal: 'zzzzzz',
      password: 'zzzzzz',
      phone: '+375 (29) 111111'
    }

  },
  methods: {
    doRegistration: function() {
      var vm = this
      var parsel = JSON.stringify({
        email: this.email,
        password: this.password,
        phone: this.phone
      })
      console.log(parsel)
      fetch('https://test-task-api.insirion.ru/user/registration', {
          method: 'POST',
          headers: {
            "Content-Type": "application/json"
          },
          body: parsel

        })
        .then(function(response) {
          console.log('ответ от сервера')
          if (response.status == 200) {
            return response.json()
          } else
            console.log('ошибка ' + response.status)
          throw error
        }, function(error) {
          throw error
        })
        .then(function(data) {
          console.log(data)
          if (data.ok !== 1) {
            console.log('ошибка при регистрации')
            throw error
          } else {
            vm.$router.push('/authorization')
          }
        })
        .catch(function genericError(error) {
          console.log(error)
        })
    },
    goToAuthorization() {
      this.$router.push('/authorization')
    }
  }
}
</script>

<style scoped>
font-family: 'Avenir',
Helvetica,
Arial,
sans-serif;
-webkit-font-smoothing: antialiased;
-moz-osx-font-smoothing: grayscale;
text-align: center;
color: #2c3e50;
margin-top: 60px;
</style>
