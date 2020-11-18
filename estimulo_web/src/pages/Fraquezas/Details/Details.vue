<template>
  <div>
    <h2>Gustavo Pedro de Souza</h2>
    <div>
      <b-tabs content-class="mt-3">
        <b-tab title="Informações da Empresa" active>
          <div id="tab-container">
            <p>I'm the first tab</p>
          </div>
        </b-tab>
        <b-tab title="Contato">
          <div id="tab-container">
            <p>I'm the first tab</p>
          </div>
        </b-tab>
        <b-tab title="Informações do negócio"
          ><div id="tab-container">
            <p>I'm the first tab</p>
          </div></b-tab
        >
        <b-tab title="Informações Pandemia"
          ><div id="tab-container">
            <p>I'm the first tab</p>
          </div></b-tab
        >
        <b-tab title="Motivações"
          ><div id="tab-container">
            <p>I'm the first tab</p>
          </div></b-tab
        >
        <b-tab title="Acompanhamento do negócio"
          ><div id="tab-container">
            <p>I'm the first tab</p>
          </div></b-tab
        >
      </b-tabs>
      <div id="btn-group">
        <b-button style="background-color: purple; margin-right: 5px"
          >Definir frequencia</b-button
        >
        <b-button variant="success" style="margin-right: 5px"
          >Reprovar</b-button
        >
        <b-button variant="danger">Aprovar</b-button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "Details",
};
</script>

<style scoped>
#btn-group {
  width: 100%;
  display: flex;
  flex-direction: row;
  justify-content: flex-end;
}
#tab-container {
  min-height: 4in !important;
  border: 2px solid gray;
  padding: 15px;
  border-radius: 25px;
  margin-bottom: 0.2in;
}
</style>