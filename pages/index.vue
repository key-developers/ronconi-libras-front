<template>
  <div class="home">
    <div class="home__warning-section">
      Quadro de avisos
    </div>

    <div class="home__content-section">
      Conteudo do Ronconi
    </div>

    <div class="home__libras-section">
      Seção de libras
    </div>
  </div>
</template>

<script>
export default {}
</script>

<style lang="scss">
.home {
  column-gap: 24px;
  display: grid;
  grid-template:
    "content" 400px
    "warning" 400px
    / auto;
}

.home__warning-section {
  grid-area: warning;
  background-color: aquamarine;
}

.home__content-section {
  grid-area: content;
  background-color: lightsalmon;
}

.home__libras-section {
  display: none;
}

@media (min-width: 992px) {
  .home {
    grid-template:
      "warning content libras" 600px
      / 1fr 3fr 1fr;
  }

  .home__libras-section {
    display: initial;
    grid-area: libras;
    background-color: lightgrey;
  }
}

</style>
