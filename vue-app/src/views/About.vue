<template>
<div>
  <section class="templateux-hero overlay"  data-scrollax-parent="true">
    <div class="cover" data-scrollax="properties: { translateY: '30%' }"><img src="../assets/images/hero_2.jpg" /></div>

    <div class="container">
      <div class="row align-items-center justify-content-center intro">
        <div class="col-md-10" >
          <h1>About Us</h1>
          <p class="lead">We are experts, engineers, authors, speakers, artists who creates astounding products for people.</p>
          <a href="#next" class="go-down js-smoothscroll"></a>
        </div>
      </div>
    </div>
  </section>
  <!-- END templateux-hero -->





  <section class="templateux-section">


    <div class="container">
      <div class="row">
        <div class="col-md-12 clearfix mb-5" >
          <h2>We Are Experts</h2>
        </div>
      </div>
<div class="row">
      <div class="col-md-4" v-for="item in whatwedo" v-bind:key="item"  data-aos-delay="200">
        <div class="media templateux-media mb-4">
          <div class="mr-4 icon">
            <span class="icon-command display-3"></span>
          </div>
          <div class="media-body">
            <h3 class="h5">{{ item.title }}</h3>
            <p>{{item.description}}</p>
          </div>
        </div>
      </div>
    </div>

    </div>
  </section>
  <ContactsContainer/>
</div>
</template>

<script>
import ContactsContainer from '../components/ContactsContainer.vue'
import axios from 'axios'

export default{
  name: 'About',
  components: {
    ContactsContainer
  },
  data(){
    return{
      whatwedo: [],
    }
  },
  mounted() {
     axios.get("http://localhost/VueApi/workdo").then(response => {this.whatwedo = response.data});
  },
}
</script>
