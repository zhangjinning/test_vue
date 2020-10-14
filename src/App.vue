<template>
  <my-head/>
  <router-view/>
</template>

<script>
import Head from './components/Head.vue'

export default {
  components: {
    'my-head': Head
  }
}
</script>

<style lang="scss">
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

</style>
