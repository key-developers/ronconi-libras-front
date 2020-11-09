<template>
  <div>
    <TheHeader />

    <Nuxt />
  </div>
</template>

<script>
import TheHeader from '../components/the-header/the-header'

export default {
  components: {
    TheHeader
  }
}
</script>

<style lang="scss">
html {
  padding-top: 60px;
}
</style>
