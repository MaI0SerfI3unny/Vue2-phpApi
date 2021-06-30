<template>
  <div>

    <section class="templateux-hero"  data-scrollax-parent="true">
      <!-- <div class="cover" data-scrollax="properties: { translateY: '30%' }"><img src="images/hero_2.jpg" /></div> -->

      <div class="container">
        <div class="row align-items-center justify-content-center intro">
          <div class="col-md-12" data-aos="fade-up">
            <div class="post-meta">
              <span>Posted in July 2, 2018</span>
              <span class="sep">&bullet;</span>
              <span>Posted by Josh Archibald</span>
            </div>
            <h1>Canvas Tote Bag &mdash; The Making</h1>

            <a href="#next" class="go-down js-smoothscroll"></a>



          </div>
        </div>
      </div>
    </section>
    <!-- END templateux-hero -->


    <section class="templateux-portfolio-overlap mb-5" id="next">
      <div id="blog" class="site-section">
    <div class="container">

            <div class="row">
              <div v-for="blog in blogs" v-bind:key="blog" class="col-md-12">
                <p class="mb-5"><img :src="require('@/'+blog.path)" alt="" class="img-fluid"></p>
                <h1>{{ blog.title }}</h1>
              {{ blog.text}}

                <div class="pt-5 mt-5">
                  <h3 class="mb-5">{{comments.length }} Comments</h3>
                  <ul class="comment-list">
                    <li v-for="(comment) in comments" v-bind:key="(comment)" class="comment">
                      <div class="vcard bio">
                        <img src="../assets/images/avatar.png" alt="Image placeholder">
                      </div>
                      <div class="comment-body">
                        <h3>{{ comment.name }}</h3>
                        <div class="meta">{{comment.date}}</div>
                        <p>{{comment.message}}</p>

                      </div>
                    </li>
                  </ul>
                  <!-- END comment-list -->

                  <div class="comment-form-wrap pt-5">
                    <h3 class="mb-5">Leave a comment</h3>
                    <form @submit="AddPost" method="post"  action="#">
                      <div class="form-group">
                        <label for="name">Name *</label>
                        <input type="text" class="form-control" name="name" v-model="posts.name" required>
                      </div>
                      <div class="form-group">
                        <label for="email">Email *</label>
                        <input type="email" class="form-control" name="email" v-model="posts.email" required>
                      </div>
                      <div class="form-group">
                        <label for="website">Website</label>
                        <input type="url" class="form-control" name="website" v-model="posts.website">
                      </div>

                      <div class="form-group">
                        <label for="message">Message</label>
                        <textarea name="message" v-model="posts.message" cols="30" rows="10" class="form-control" required></textarea>
                      </div>
                      <div class="form-group">
                        <input type="submit" value="Post Comment" class="btn py-3 px-4 btn-primary">
                      </div>

                    </form>
                  </div>
                </div>

              </div>
            </div>


          </div>
  </div>

    </section>
  </div>
</template>

<script>
import axios from 'axios'

export default{
  name: 'BlogPage',
  data(){
    return{
      posts: {
        name: null,
        email: null,
        website: null,
        message: null,
        blog_id: window.location.pathname.slice(6),
        date: String(new Date().getMonth() + 1).padStart(2, '0')+ '-' + String(new Date().getDate()).padStart(2, '0') + '-' + new Date().getFullYear()
      },
    }
  },
  props: {
    blogs: [],
    comments:[],
  },
  methods:{
    AddPost(e){
      e.preventDefault();
      axios.post('http://localhost/VueApi/comments', this.posts).then((result) => {
       console.log(result);
       window.location.reload();

      })
    }
  },
  mounted(){
      const id = window.location.pathname.slice(6);
      axios.get("http://localhost/VueApi/blogs/"+id).then(response => {this.blogs = response.data});
      axios.get("http://localhost/VueApi/comments/"+id).then(response => {this.comments = response.data});
  }
}
</script>
