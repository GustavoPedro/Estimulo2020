<template>
<div>
  <h3>Empresários</h3>
  <b-row> 
      <b-col sm="6">
          <ListItem/>
      </b-col>
      <b-col sm="6">
          <ListItem/>
      </b-col>
      <b-col sm="6">
          <ListItem/>
      </b-col>
      <b-col sm="6">
          <ListItem/>
      </b-col>
      <b-col sm="6">
          <ListItem/>
      </b-col>
      <b-col sm="6">
          <ListItem/>
      </b-col>
      <b-col sm="6">
          <ListItem/>
      </b-col>
  </b-row>
  
  </div>
</template>

<script>
import ListItem from './components/ListItem.vue'

export default {
 name: "Fraquezas",
 components:{
     ListItem
 }
}
</script>

<style>

</style>