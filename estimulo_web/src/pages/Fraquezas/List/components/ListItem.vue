<template>
  <div>
    <b-card title="Gustavo Pedro de Souza">
      <b-card-text> Respondido no dia 20/11/2020 </b-card-text>

      <b-card-text style="color: yellow">Pendente</b-card-text>

      <router-link
        style="background-color: purple; color: white"
        class="btn"
        to="/details"
      >
        Verificar Dados
      </router-link>
    </b-card>
  </div>
</template>

<script>
export default {
  name: "ListItem",
};
</script>