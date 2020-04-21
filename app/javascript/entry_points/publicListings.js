import Vue from 'vue'
import PublicListings from 'components/PublicListings'

export default function(el) {
  new Vue({
    el,
    render(h) {
      return h(PublicListings)
    }
  })
}
