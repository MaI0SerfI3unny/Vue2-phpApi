<template>
  <main>
    <section class="templateux-hero">
      <div class="container">
        <div class="row align-items-center justify-content-center intro">
          <div class="col-md-10" >
            <h1>We are Strategy. A digitally minded creative agency based in NYC.</h1>
            <a href="#next" class="go-down js-smoothscroll"></a>
          </div>
        </div>
      </div>
    </section>

    <section class="templateux-portfolio-overlap" id="next">
      <div class="container-fluid">
        <div class="row">
          <div v-for="(work,index) in works" v-bind:key="(work,index)" :class="index < 2 ? 'col-md-6' : 'col-lg-4'" >
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



    <section class="templateux-section">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-4" >
            <h2 class="section-heading mt-3">What We Do</h2>
          </div>
          <div class="col-md-8"  data-aos-delay="100">

            <div class="row">
              <div class="col-md-12">
                <h2 class="mb-5">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</h2>
              </div>
            </div>
            <div class="row  pt-sm-0 pt-md-5 mb-5">

              <div v-for="item in whatwedo" v-bind:key="item" class="col-lg-6">
                <div class="media templateux-media mb-4">
                  <div class="mr-4 icon">
                    <span class="icon-monitor display-3"></span>
                  </div>
                  <div class="media-body">
                    <h3 class="h5">{{item.title ? item.title: 'No Hover'}}</h3>
                    <p>{{item.description? item.description: 'No Description'}}</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>



    <section class="templateux-section mb-5">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-4" >
            <h2 class="section-heading mt-3">Recent Blog Posts</h2>
          </div>
          <div class="col-md-8">
            <div class="row">
              <div v-for="(blog,index) in blogs" v-bind:key="(blog,index)" :class="index < 1 ? 'col-lg-12' : 'col-lg-6'">
                <a class="post animsition-link" :href="`page=${blog.id}`"  data-aos-delay="100">
                  <figure>
                    <img :src="require('@/'+blog.path)" alt="Free Template" class="img-fluid">
                  </figure>
                  <div class="post-hover">
                    <div class="post-hover-inner">
                      <h2>{{blog.title}}</h2>
                      <span>{{blog.date}}</span>
                    </div>
                  </div>
                </a>
              </div>
            </div>


          </div>
        </div>
        <div class="row"  data-aos-delay="400">
          <div class="col-md-8 ml-auto">
            <a href="/blog" class="animsition-link">Read All Blog Posts </a>
          </div>
        </div>
      </div>
      <ContactsContainer/>
    </section>

  </main>
</template>

<script>
import ContactsContainer from '../components/ContactsContainer.vue'
import axios from 'axios';
export default {
  name: 'Home',
  components: {
    ContactsContainer
  },
  data(){
    return{
      whatwedo: [],
      blogs: [],
      works: [],
    }
  },
  mounted() {
     axios.get("http://localhost/VueApi/workdo?limit=4").then(response => {this.whatwedo = response.data});
     axios.get("http://localhost/VueApi/blogs?limit=3").then(response => {this.blogs = response.data});
     axios.get("http://localhost/VueApi/works?limit=5").then(response => {this.works = response.data});
  },
}
</script>
