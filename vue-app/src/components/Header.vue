<template>
  <header class="templateux-navbar">
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-3"><div class="site-logo"><a href="/" class="animsition-link">Strategy</a></div></div>
        <div class="col-sm-9 col-9 text-right">

          <button class="hamburger hamburger--spin toggle-menu ml-auto js-toggle-menu" type="button">
            <span class="hamburger-box">
              <span class="hamburger-inner"></span>
            </span>
          </button>

          <nav class="templateux-menu js-templateux-menu" role="navigation">
            <ul class="list-unstyled">
              <li><router-link to="/work" exact class="animsition-link">Work</router-link></li>
              <li><router-link to="/about-us" exact class="animsition-link">About</router-link></li>
              <li><router-link to="/blog" exact class="animsition-link">Blog</router-link></li>
              <li><router-link to="/contact" exact class="animsition-link">Contact</router-link></li>
            </ul>
          </nav>
        </div>
      </div>
    </div>
  </header>
</template>

<script>
export default{
  name: 'Header'
}
</script>

<style scoped>
a{
  text-decoration:none
}
</style>
