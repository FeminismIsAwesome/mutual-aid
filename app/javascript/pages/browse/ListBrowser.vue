<template>
  <div class="listBrowser">
    <h2 class="title">List view</h2>
    <table class="table table-hover table-curved table-condensed is-hoverable">
      <tr>
        <th>Categories</th>
        <th>Availability</th>
        <th>Location</th>
        <th>Details</th>
      </tr>
      <tr v-for="listing in listings" :key="listing.id">
        <td><TagList :tags="listing.categoryTags" /></td>
        <td>{{ listing.availability }}</td>
        <td><TagList :tags="listing.locationTags" /></td>
        <td>{{ listing.short_title }}</td>
      </tr>
    </table>
  </div>
</template>

<script>
import TagList from 'components/TagList'

export default {
  props: {
    listings: {type: Array, default: () => []},
    filters: Object,
  },
  components: {
    TagList,
  },
}
</script>
