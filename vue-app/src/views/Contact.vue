<template>
<div>
  <section class="templateux-hero mb-5"  data-scrollax-parent="true">
    <!-- <div class="cover" data-scrollax="properties: { translateY: '30%' }"><img src="images/hero_2.jpg" /></div> -->

    <div class="container">
      <div class="row align-items-center justify-content-center intro">
        <div class="col-md-10" >
          <h1>Get in touch</h1>
          <p class="lead">Have an amazing idea you would like to work with us on? Let us know using the form below</p>
          <a href="#next" class="go-down js-smoothscroll"></a>
        </div>
      </div>
    </div>
  </section>
  <!-- END templateux-hero -->


  <section class="templateux-portfolio-overlap mb-5"  id="next">
    <div class="container">
      <!-- <div class="row"> -->
        <form @submit="postContact" action="#" method="post">
          <div class="row">
            <div class="col-md-4  mb-4">
              <input type="text" class="form-control" placeholder="Name" v-model="post.name" name='name' required>
            </div>
            <div class="col-md-4  mb-4">
              <input type="email" class="form-control" placeholder="Email" v-model="post.email" name='email' required>
            </div>
            <div class="col-md-4  mb-4">
              <input type="text" class="form-control" placeholder="Phone" v-model="post.phone" name='phone'>
            </div>
          </div>
          <div class="row">
            <div class="col-md-4  mb-4">
              <input type="text" class="form-control" placeholder="Time Zone" v-model="post.timezone" name='timezone'>
            </div>
            <div class="col-md-4  mb-4">
              <input type="email" class="form-control" placeholder="Budget" v-model="post.budget" name='budget'>
            </div>
            <div class="col-md-4  mb-4">
              <input type="text" class="form-control" placeholder="Type of Work" v-model="post.type" name='type' required>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12  mb-4">
              <textarea class="form-control" name='message' cols="30" rows="10" v-model="post.message" placeholder="Write your message" required></textarea>
            </div>
          </div>
          <div class="row">
            <div class="col-md-4  mb-4">
              <input  type="submit" class="button button--red" value='Send your message'>
            </div>
          </div>
        </form>
      <!-- </div> -->
    </div>
  </section>

  <section id="map"></section>
</div>
</template>

<script>
import axios from 'axios'

export default{
  name: 'Contact',
  data(){
    return{
      post: {
        name: null,
        email: null,
        phone: null,
        timezone: null,
        budget: null,
        type: null,
        message: null,
      }
    }
  },
  methods: {
    postContact(e){

     axios.post('http://localhost/VueApi/contacts', this.post).then((result) => {
      console.log(result);
      window.location.reload();
     })
     e.preventDefault();
    }
  },
}
</script>
