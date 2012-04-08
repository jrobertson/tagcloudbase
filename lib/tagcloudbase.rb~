#!/usr/bin/env ruby

# file: tagcloudbase.rb

require 'dynarex'

class TagCloudBase

  attr_reader :to_dynarex

  def initialize(all_tags={})
    tags = all_tags.sort_by {|name,count| -count.to_i}
    biggest_tag = tags.first[1].to_i

    # sort in alphabetical order
    abc_tags = tags.sort_by &:first

    @to_dynarex = Dynarex.new('tags/tag(name,gauge,count)')
    abc_tags.each do |word, word_size|
      weight = 100 / (biggest_tag / word_size.to_i)
      gauge = (weight / 10).to_i
      gauge = 8 if gauge > 8
      @to_dynarex.create name: word, gauge: gauge.to_s, count: word_size
    end
  end

end
