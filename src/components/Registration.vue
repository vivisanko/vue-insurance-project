<template>
<div>
  <div class="main">
    <div class='header'></div>
    <div class='center'>
      <div class="center-left">
        <div class='content-left'>
          <div class="small-logo">
            <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewBox="0 20 260 260">
             <g fill="none" fill-rule="nonzero">
        <path fill="#0089f7" fill-opacity=".6" d="M155.774 81.626l-30.182-61.609-87.948 218.287 128.813-58.839-87.496 4.013 76.813-101.852"/>
        <path fill="#0089f7" fill-opacity=".6" d="M223.827 238.53L159.448 89.935l-35.382 47.535 99.76 101.06"/>
        <path fill="#0089f7" fill-opacity=".3" d="M37.644 238.304L141.192 51.896l-15.6-31.879-87.948 218.287M223.827 238.53L141.87 113.56l17.578-23.625 64.379 148.595"/>
        <path fill="#0089f7" d="M78.961 183.478l11.53-40.243 50.7-91.34-15.6-31.878 30.183 61.609-76.813 101.852"/>
        <path fill="#0089f7" fill-opacity=".6" d="M90.492 143.235l35.1-123.218 15.6 31.879-50.7 91.339"/>
        <path fill="#ffffff" d="M37.644 238.304l128.135-58.556.113.113-128.248 58.443"/>
        <path fill="#0089f7" d="M37.644 238.304l20.291-36.513 107.787-22.1.057.057-128.135 58.556"/>
        <path fill="#ffffff" d="M165.909 179.884l-.187-.187.311-.062.187.124-.311.125"/>
        <path fill="#0089f7" fill-opacity=".6" d="M37.644 238.304l14.187-35.27 6.104-1.243-20.291 36.513"/>
        <path fill="#0089f7" d="M223.827 238.53l-57.653-58.782.622-.283-.791.17-.17-.17-2.317-32.895 60.309 91.96"/>
        <path fill="#0089f7" fill-opacity=".6" d="M223.827 238.53l-60.31-91.96-4.069-56.635 64.379 148.595"/>
        <path fill="#ffffff" d="M166.174 179.776l-.17-.124.792-.187-.622.311"/></g><text dy=270 dx=60 fill="#949ea6" font-size=40 font-weight=40>A Z U R</text></svg>
          </div>

          <div class='entry-group'>
            <input class="entry-group-input" v-model="logon" />
            <div class="entry-group-line"></div>
            <p class="entry-group-text">Введите логин</p>
          </div>
          <div class='entry-group pass'>
            <input class="entry-group-input" v-model="passwordOriginal" />
            <div class="entry-group-line"></div>
            <p class="entry-group-text">Придумайте пароль</p>
          </div>
          <div class='entry-group pass'>
            <input class="entry-group-input" v-model="password" />
            <div class="entry-group-line"></div>
            <p class="entry-group-text">Повторите пароль</p>
          </div>
          <div class='entry-group pass'>
            <input class="entry-group-input" v-model="phone" />
            <div class="entry-group-line"></div>
            <p class="entry-group-text">Введите телефон</p>
          </div>
          <div class='entry-group pass'>
            <input class="entry-group-input" v-model="email" />
            <div class="entry-group-line"></div>
            <p class="entry-group-text">Введите ваш e-mail</p>
          </div>
          <div class="mistake">{{ message }}</div>
          <div class="underside">
            <button class="underside-button-big" v-on:click="doRegistration">Регистрация</button>
            <router-link class="underside-link" to="/authorization">У меня есть аккаунт</router-link>
            <p class="underside-Azur"><span>Единый номер Azur: </span>+375 (29) 123-45-67</p>
          </div>
        </div>
      </div>
      <div class="center-right">
        <div class="content-right">
          <h1 class="topping-Azur">Добро пожаловать в <span>Azur</span>.</h1>
          <p class="topping-text">Для доступа в ваш аккаунт, авторизируйтесь.</p>
          <div class="big-logo">
            <svg xmlns="http://www.w3.org/2000/svg" width="260" height="260" viewBox="0 0 260 260">
    <g fill="none" fill-rule="nonzero">
        <path fill="#FFF" fill-opacity=".6" d="M155.774 81.626l-30.182-61.609-87.948 218.287 128.813-58.839-87.496 4.013 76.813-101.852"/>
        <path fill="#FFF" fill-opacity=".6" d="M223.827 238.53L159.448 89.935l-35.382 47.535 99.76 101.06"/>
        <path fill="#FFF" fill-opacity=".3" d="M37.644 238.304L141.192 51.896l-15.6-31.879-87.948 218.287M223.827 238.53L141.87 113.56l17.578-23.625 64.379 148.595"/>
        <path fill="#FFF" d="M78.961 183.478l11.53-40.243 50.7-91.34-15.6-31.878 30.183 61.609-76.813 101.852"/>
        <path fill="#FFF" fill-opacity=".6" d="M90.492 143.235l35.1-123.218 15.6 31.879-50.7 91.339"/>
        <path fill="#FFF" d="M37.644 238.304l128.135-58.556.113.113-128.248 58.443"/>
        <path fill="#FFF" d="M37.644 238.304l20.291-36.513 107.787-22.1.057.057-128.135 58.556"/>
        <path fill="#357FB6" d="M165.909 179.884l-.187-.187.311-.062.187.124-.311.125"/>
        <path fill="#FFF" fill-opacity=".6" d="M37.644 238.304l14.187-35.27 6.104-1.243-20.291 36.513"/>
        <path fill="#FFF" d="M223.827 238.53l-57.653-58.782.622-.283-.791.17-.17-.17-2.317-32.895 60.309 91.96"/>
        <path fill="#FFF" fill-opacity=".6" d="M223.827 238.53l-60.31-91.96-4.069-56.635 64.379 148.595"/>
        <path fill="#345394" d="M166.174 179.776l-.17-.124.792-.187-.622.311"/>
    </g>
  </svg>
          </div>
        </div>
        <div class="radius-remove"></div>
      </div>
    </div>
  </div>

</div>
</template>

<script>
export default {
  data() {
    return {
      logon: 'anonim',
      passwordOriginal: 'zzzzzz',
      password: 'zzzzzz',
      phone: '+375 (29) 111111',
      email: 'anonim@gmail.com',
      message: '',
      verification: false,
    }

  },
  methods: {
    makeVerification: function() {
      if (this.logon.length < 1 || this.passwordOriginal.length < 1 || this.password.length < 1 || this.phone.length < 1 || this.email.length < 1) {
        this.message = "ВНИМАНИЕ: Для регистрации заполните все поля формы"
      } else if (this.passwordOriginal.length != this.password.length) {
        this.message = "ВНИМАНИЕ: При вводе пароля вы допустили ошибку"
      } else {
        var a = true
        for (var i = 0; i < this.password.length; i++) {
          if (this.password[i] != this.passwordOriginal[i]) {
            this.message = "ВНИМАНИЕ: При вводе пароля вы допустили ошибку "
            a = false
            break
          }
        }
        if (a) {
          this.message = ""
          this.verification = true
        }
      }

    },
    doRegistration: function() {
      this.makeVerification()
      if (!this.verification) {
        return
      }
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
          body: parselho

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
    }
  }
}
</script>

<style scoped>
.main {
  margin: 0px;
  height: 809px;
  display: flex;
  flex-basis: 100%;
  flex-direction: column;
  align-items: center;
  justify-content: space-between;
}

.header {
  width: 100vw;
  margin: 0px;
  height: 108px;
  background-color: rgba(24, 68, 122, 0.5);
}

.center {
  max-width: 860px;
  min-height: 622px;
  border-radius: 10px;
  background-color: #ffffff;
  box-shadow: 0 0 30px 0 rgba(0, 0, 0, 0.4);
  display: flex;
  flex-direction: row;
  flex-wrap: wrap-reverse;
  justify-content: center;
}

.center-left {
  flex-basis: calc(50% - 10px);
  flex-grow: 5;
  height: 622px;
}

.center-right {
  flex-basis: calc(50% + 10px);
  flex-grow: 1;
  height: 622px;
}

.content-left {
  width: calc(430px - 10px);
  height: 622px;
  display: block;
  margin: auto;
  margin-top: 0px;
}

.small-logo {
  display: block;
  padding-top: 30px;
  margin-left: calc(50% - 130px - 50px);
  width: 50px;
  height: 50px;
}

.entry-group-text {
  width: 95px;
  height: 15px;
  font-family: 'Fira Sans', sans-serif;
  font-size: 10px;
  line-height: 1.5;
  text-align: left;
  color: #999999;
  margin-top: -40px;
}

.entry-group {
  padding-top: 48px !important;
  margin: auto;
  width: 260px;
  height: 40px;
  position: relative;
}

input:focus~div {
  background-color: #3088f4;
}

input:focus~p {
  color: #3088f4;
}

.entry-group-line {
  width: 260px;
  height: 2px;
  background-color: #cccccc;
}

.entry-group-input {
  width: 260px;
  height: 21px;
  border-style: hidden;
  font-family: 'Fira Sans', sans-serif;
  font-size: 14px;
  line-height: 1.5;
  letter-spacing: 0.5px;
  text-align: left;
  color: #3c3c3c;
}

.entry-group-input:focus {
  letter-spacing: normal;
  outline: none;
}

.pass {
  padding-top: 14px !important;
}

.mistake {
  width: 100%;
  height: 24px;
  display: block;
  font-family: 'Fira Sans', sans-serif;
  font-size: 10px;
  font-style: italic;
  font-weight: 500;
  text-align: center;
  color: red;
}

.underside {
  width: 260px;
  margin: auto;
  margin-top: 10px;
}

.underside-button-big {
  width: 260px;
  height: 40px;
  border-radius: 100px;
  background-color: #3088f4;
  border: solid 2px #3088f4;
  font-family: 'Fira Sans', sans-serif;
  font-size: 16px;
  font-weight: 500;
  line-height: 1.5;
  letter-spacing: 2px;
  text-align: center;
  color: #ffffff;
}

.underside-link {
  width: 144px;
  height: 21px;
  font-family: 'Fira Sans', sans-serif;
  font-size: 14px;
  line-height: 1.5;
  letter-spacing: 0.5px;
  text-align: left;
  color: #3c3c3c;
  text-decoration: none;
  display: block;
  margin: auto;
  margin-top: 20px;
}

.underside-Azur {
  width: 214px;
  height: 15px;
  font-family: 'Fira Sans', sans-serif;
  font-size: 14px;
  line-height: 1.07;
  text-align: left;
  color: #3088f4;
  display: block;
  margin: auto;
  margin-top: 90px;
}

.underside-Azur span {
  font-size: 10px;
  line-height: 1.5;
  color: #999999;
}

.content-right {
  width: calc(430px + 10px);
  height: 622px;
  border-radius: 10px;
  background-image: linear-gradient(325deg, #30e8bd, #3088f4);
  display: block;
  margin: auto;
  margin-top: 0px;
}

.big-logo {
  display: block;
  margin: auto;
  margin-top: 60px;
  width: 260px;
  height: 260px;
}

/*.big-logo img {*/

/*object-fit: contain;*/

/*}*/

.topping-Azur {
  display: block;
  width: 316px;
  height: 108px;
  margin-left: calc(50% - 130px - 40px);
  margin-top: 0px;
  margin-bottom: 0px;
  padding-top: 25px;
  font-family: 'Raleway', sans-serif;
  font-size: 36px;
  font-weight: 200;
  line-height: 1.5;
  text-align: left;
  color: #ffffff;
}

.topping-Azur span {
  font-weight: bold;
}

.topping-text {
  display: block;
  margin: auto;
  margin-top: 10px;
  margin-bottom: 0px;
  margin-left: calc(50% - 130px - 40px);
  width: 345px;
  height: 21px;
  font-family: 'Fira Sans', sans-serif;
  font-size: 16px;
  line-height: 1.31;
  text-align: left;
  color: #ffffff;
}

.radius-remove {
  width: 10px;
  height: 622px;
  background-color: #fff;
  margin-top: -622px;
}

@media screen and (max-width: 859px) {
  .main {
    background-color: rgba(24, 68, 122, 0.5);
    padding-top: 100px;
    min-height: 100vh;
  }

  .header {
    display: none;
  }
  .center {
    margin: 0px;
    padding: 0px;
    min-height: 640px;
  }
  .center-left {
    width: 100%;
    height: 500px;
  }
  .content-left {
    width: 100%;
    height: 100%;
    background-color: #fff;
    border-radius: 10px;
  }
  .small-logo {
    display: none;
  }
  .entry-group {
    width: 90%;
  }
  .entry-group-line {
    width: 100%;
  }
  .entry-group-input {
    width: 100%;
  }
  .underside-Azur {
    margin-top: 40px;
  }

  .center-right {
    height: 140px;
    width: 100%;
  }
  .content-right {
    width: 100%;
    height: 100%;
  }
  .radius-remove {
    height: 20px;
    width: 100%;
    padding: 10px 0;
    margin: auto;
    margin-top: -10px;
  }
  .topping-Azur {
    margin-left: calc(50% - 130px + 70px);
    width: 176px;
    height: 72px;
    font-size: 20px;
  }
  .topping-Azur span {
    font-size: 24px;
  }
  .topping-text {
    width: 259px;
    height: 18px;
    font-size: 12px;
    margin: auto;
  }
  .big-logo {
    display: block;
    width: 70px;
    height: 70px;
    margin-top: -95px;
    margin-left: calc(50% - 130px);
  }
  .big-logo svg {
    width: 70px;
    height: 70px;
  }
}
</style>
