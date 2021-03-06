class ListingForm < Reform::Form
  DEFAULT_TAGS = [
    'prepared meals',
    'groceries',
    'housing',
    'household supplies',
    'cleaning',
    'clothing',
    'laundry',
    'home repairs',
    'yard work',
    'childcare',
    'storage',
    'dog walking',
    'pet sitting',
    'emotional support',
    'religious support',
    'errands',
    'transportation',
    'making calls',
    'tech support',
    'translation',
    'healthcare',
    'cash',
    'Information about financial assistance'
  ]

  collection :tags

  property :location, form: LocationForm

  def self.all_tags
    DEFAULT_TAGS | Listing.all_tags
  end

  def tags=(array)
    super(array - [""])
  end
end
