<template>
<div class="list">
  <ul>

  <div v-for="name in names" class="container" v-bind:key="name">
    <p>Name: {{ name.name }}</p>
    <p>Status: {{name.status}}</p>
    <hr>
  </div>

</ul>
</div>
</template>

<script>
export default {
  name: 'List',
  props: {
    names:{
    type: Array,
    required: true
    }

  }
}
</script>

<style scoped>
.container{
  display:inline-flex;
  color: orange;
}
</style>
