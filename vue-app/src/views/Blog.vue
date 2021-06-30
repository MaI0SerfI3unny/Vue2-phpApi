<template>
  <div>
    <!-- END templateux-navbar -->
    <section class="templateux-hero"  data-scrollax-parent="true">
      <!-- <div class="cover" data-scrollax="properties: { translateY: '30%' }"><img src="images/hero_2.jpg" /></div> -->

      <div class="container">
        <div class="row align-items-center justify-content-center intro">
          <div class="col-md-10" >
            <h1>Our Blog</h1>
            <p class="lead">We are experts, engineers, authors, speakers, artists who creates astounding products for people.</p>
            <a href="#next" class="go-down js-smoothscroll"></a>
          </div>
        </div>
      </div>
    </section>
    <!-- END templateux-hero -->


    <section class="templateux-portfolio-overlap mb-5" id="next">
      <div class="container-fluid">
      <div class="row">

          <div v-for="blog in blogs" v-bind:key="blog" class="col-md-6" >
            <a class="post animsition-link" :href="`page=${blog.id}`">
              <figure>
                <img :src="require('@/'+blog.path)" alt="Free Template" class="img-fluid">
              </figure>
              <div class="project-hover">
                <div class="project-hover-inner">
                  <h2>{{ blog.title }}</h2>
                  <span>{{ blog.date }}</span>
                </div>
              </div>
            </a>
          </div>
        </div>
        <!-- END row -->


        <div class="row pt-5"  data-aos-delay="100">
          <div class="col-md-12 text-center">
            <a v-if="blogs.length > 5" href="#" class='button button--red  mb-5'>Load More Posts...</a>
          </div>
        </div>
      </div>
      <ContactsContainer/>
    </section>
  </div>
</template>

<script>
import ContactsContainer from '../components/ContactsContainer.vue'
import axios from 'axios'

export default{
  name: 'Blog',
  data(){
  return{
  blogs: [],
  }},
  components: {
    ContactsContainer
  },
  mounted() {
     axios.get("http://localhost/VueApi/blogs").then(response => {this.blogs = response.data});
  },
}

</script>
