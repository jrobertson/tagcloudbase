#!/usr/bin/env ruby

# file: tagcloudbase.rb

require 'dynarex'
require 'rexslt'
require 'nokogiri'

class TagCloudBase


  attr_reader :to_dynarex
  attr_accessor :xsl

  def initialize(all_tags={})
    
    tags = all_tags.sort_by {|x| -x[-1][-1].to_i}
    biggest_tag = tags.first[-1][-1].to_i
    # sort in alphabetical order
    abc_tags = tags.sort_by &:first

    @to_dynarex = Dynarex.new('tags/tag(word,href,gauge,count)')
    
    abc_tags.each do |word, v|
      href, word_size = v
      weight = 100 / (biggest_tag / word_size.to_i)
      gauge = (weight / 10).to_i
      gauge = 8 if gauge > 8
      @to_dynarex.create word: word, href: href, gauge: gauge.to_s, count: word_size
    end
    
  end
  
  def to_webpage()
    
    lib = File.dirname(__FILE__)
    xsl = File.read lib + '/tagcloud.xsl'
    css = File.read lib + '/tagcloud.css'

    doc   = Nokogiri::XML(@to_dynarex.to_xml)
    xslt  = Nokogiri::XSLT(@xsl || xsl)    
    html = xslt.transform(Nokogiri::XML(@to_dynarex.to_xml))

    return {html: html, css: css}
  end

end
