<template>
  <div>
    <section class="templateux-hero"  data-scrollax-parent="true">

      <div class="container">
        <div class="row align-items-center justify-content-center intro">
          <div class="col-md-10" >
            <h1>Portfolio</h1>
            <p class="lead">We are experts, engineers, authors, speakers, artists who creates astounding products for people.</p>
            <a href="#next" class="go-down js-smoothscroll"></a>
          </div>
        </div>
      </div>
    </section>

    <section class="templateux-portfolio-overlap mb-5" id="next">
      <div class="container-fluid">
        <div class="row">

          <div v-for="work in works" v-bind:key="work" class="col-lg-4 col-md-6"  data-aos-delay="200">
            <a class="project animsition-link" :href="`work=${work.id}`">
              <figure>
                <img :src="require('@/'+ work.path)" alt="Free Template" class="img-fluid">
              </figure>
              <div class="project-hover">
                <div class="project-hover-inner">
                  <h2>{{ work.title }}</h2>
                  <span>{{ work.date }}</span>
                </div>
              </div>
            </a>
          </div>

        </div>
      </div>
    </section>
  <ContactsContainer/>
  </div>
</template>

<script>
import ContactsContainer from '../components/ContactsContainer.vue';
import axios from 'axios'

export default{
  name: 'Work',
  components: {
    ContactsContainer
  },
  data(){
  return{
  works: [],
  }},
  mounted() {
     axios.get("http://localhost/VueApi/works").then(response => {this.works = response.data});
  },
}
</script>
