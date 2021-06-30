import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
import Blog from './views/Blog.vue'
import Work from './views/Work.vue'
import Contact from './views/Contact.vue'
import About from './views/About.vue'
import BlogPage from './views/BlogPage.vue'
import WorkPage from './views/WorkPage.vue'

Vue.use(Router)

export default new Router({
  mode: 'history',
  routes: [
    {path:'/', component: Home},
    {path:'/blog', component: Blog},
    {path:'/work', component: Work},
    {path:'/contact', component: Contact},
    {path:'/about-us', component: About},
    {path:'/page=:id', component: BlogPage},
    {path:'/work=:id', component: WorkPage},

  ]
})
