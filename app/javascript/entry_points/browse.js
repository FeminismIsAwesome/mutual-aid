import Vue from 'vue'
import Browse from 'pages/Browse'

export default function(el, properties) {
  new Vue({
    el,
    render(h) {
      return h(Browse, {props: properties})
    }
  })
}

