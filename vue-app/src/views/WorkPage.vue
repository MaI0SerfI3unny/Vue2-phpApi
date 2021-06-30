<template>
  <div>
    <section class="templateux-hero"  data-scrollax-parent="true">
      <!-- <div class="cover" data-scrollax="properties: { translateY: '30%' }"><img src="images/hero_2.jpg" /></div> -->

      <div class="container">
        <div class="row align-items-center justify-content-center intro">
          <div class="col-md-10" data-aos="fade-up">
            <h1>Canvas Tote Bag</h1>

            <a href="#next" class="go-down js-smoothscroll"></a>




          </div>
        </div>
      </div>
    </section>
    <!-- END templateux-hero -->


    <section class="templateux-portfolio-overlap mb-5" id="next">
      <div class="container">
        <div class="row justify-content-center">
          <div v-for="work in works" v-bind:key="work" class="col-md-10">
            <img :src="require('@/'+ work.path)" alt='Free Template' class='img-fluid'>
            <p>{{work.date}}</p>
            <h1>{{ work.title }}</h1>
            <p>{{work.text}}</p>

            <p class="text-center"><a href="#" class="button button--red">Visit Website</a></p>
          </div>



        </div>

      </div>
    </section>

    <section class="testimony">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-10">
            <blockquote class="mb-5">
              <p>&ldquo;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Non, quod, error laudantium suscipit eos voluptatem magni quae a perferendis possimus tenetur, consequatur incidunt sed! Iste rem suscipit quaerat. Laudantium, ipsa.&rdquo;</p>
            </blockquote>
            <p class="author">&mdash; <span>John Smith</span>, <span>Tote Bag CEO</span></p>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script>
import axios from 'axios'

export default{
  name: 'WorkPage',
  props: {
    works: [],
  },
  mounted(){
    const id = window.location.pathname.slice(6);

    axios.get("http://localhost/VueApi/works/"+id).then(response => {this.works = response.data;console.log(response.data)});

  }
}
</script>
