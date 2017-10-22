<template>
<div>
  <div>
    <p>Логин или e-mail</p>
    <input v-model="email" />
    <p>Пароль</p>
    <input v-model="password" />
    <button>Забыли?</button>
    <button v-on:click="inGoing">Войти</button>
    <button v-on:click="goToRegistration">Зарегистрироваться</button>
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
      password: 'zzzzzz'
    }

  },
  methods: {
    inGoing() {
      var vm=this
      var pars = JSON.stringify({
        email: this.email,
        password: this.password
      })
      fetch('https://test-task-api.insirion.ru/user/authorization', {
          method: 'POST',
          headers: {
            "Content-Type": "application/json"
          },
          body: pars

        })
        .then(function(response) {
          console.log('ответ от сервера')
          return response.json()

        })
        .then(function(data) {
          console.log(data)
          console.log(data.token)
          localStorage.setItem('token-sirion', data.token)
          vm.$router.push('/cabinet')
        })

    },
    goToRegistration() {
      this.$router.push('/registration')
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
