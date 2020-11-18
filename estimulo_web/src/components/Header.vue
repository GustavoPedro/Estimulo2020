<template>
  <div>
    <b-navbar toggleable="lg" type="dark" variant="dark">
      <div id="navbar-container">
        Estimulo 2020
      </div>
    </b-navbar>
  </div>
</template>


<script>
export default {
  name: "Header",
};
</script>

<style scoped>
.navbar.navbar-dark.bg-dark {
  background-color: purple !important;
}
#navbar-container {
    width: 100%;
    display: flex;
    flex-direction: row;
    justify-content: center;
    color:white;
    font-size: 18px;
    font-weight: bold;
    padding-top: 5px;
    padding-bottom: 5px;
}
</style>
