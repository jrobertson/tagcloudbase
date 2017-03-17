# Generating a web page using the TagCloudBase gem


    require 'tagcloudbase'

    all_tags = {
      Egypt:   ['egypt.html',   45], 
      UK:      ['uk.html',     103], 
      France:  ['france.html',  56], 
      Belgium: ['belgium.html', 53], 
      Ireland: ['ireland.html', 49], 
      China:   ['china.html',  256], 
      Somalia: ['somalia.html', 21]
    }.to_a

    tagcloudbase = TagCloudBase.new(all_tags)
    h = tagcloudbase.to_webpage

    html =<<EOF
    <!DOCTYPE html>
    <html lang="en">
      <head>
        <title>Countries by value (tag cloud)</title>
        <meta charset="utf-8" />
        <style type="text/css">
          #{h[:css]}
        </style>
      </head>
      <body>
        #{h[:html].to_html}
      </body>
    </html>
    EOF

    File.write 'tagcloud.html', html

Below is a screenshot of the generated tag cloud in the web page:

![Screenshot of the tag cloud in the web browser](http://www.jamesrobertson.eu/r/images/2017/mar/17/tagcloudbase-screenshot.png)

Here's the HTML source code:

<pre>
&lt;!DOCTYPE html&gt;
&lt;html lang="en"&gt;
  &lt;head&gt;
    &lt;title&gt;Countries by value (tag cloud)&lt;/title&gt;
    &lt;meta charset="utf-8" /&gt;
    &lt;style type="text/css"&gt;
      /* file: tag_cloud.css */

.tag {
  font-family: Arial,'Luxi Sans', Helvetica, Impact; line-height: 2em
}
  .tag a {background-color: #444; padding: 0.3em; margin: 0.9em 0.2em;}
  .tag a:link {background-color: #000; color: #fff; text-decoration: none}
  .tag a:visited {background-color: #555;}
  .tag a:hover {background-color: #000; text-decoration: none; color: #ccc}
  .tag a:active {background-color: #666;}
  .tag a:focus {background-color: #666;}

  .s1 { background-color: transparent; color: #123; font-size: 1.13em }
  .s2 { background-color: transparent; color: #123; font-size: 1.36em }
  .s3 { background-color: transparent; color: #123; font-size: 1.59em }
  .s4 { background-color: transparent; color: #123; font-size: 1.82em; font-weight: 300 }
  .s5 { background-color: transparent; color: #123; font-size: 2.05em; font-weight: 400 }
  .s6 { background-color: transparent; color: #123; font-size: 2.28em; font-weight: 500 }
  .s7 { background-color: transparent; color: #123; font-size: 2.51em; font-weight: 600 }
  .s8 { background-color: transparent; color: #123; font-size: 2.74em; font-weight: 700 }
  .s9 { background-color: transparent; color: #123; font-size: 2.9em; font-weight: 800 }
  .s10 { background-color: transparent; color: #123; font-size: 3.2em; font-weight: 900}


    &lt;/style&gt;
  &lt;/head&gt;
  &lt;body&gt;
    &lt;h1&gt;&lt;/h1&gt;&lt;div id="articles"&gt;&lt;div id="records"&gt;
&lt;span class="tag s2"&gt;&lt;a href="belgium.html"&gt;Belgium&lt;/a&gt;&lt;/span&gt;
 &lt;span class="tag s8"&gt;&lt;a href="china.html"&gt;China&lt;/a&gt;&lt;/span&gt;
 &lt;span class="tag s2"&gt;&lt;a href="egypt.html"&gt;Egypt&lt;/a&gt;&lt;/span&gt;
 &lt;span class="tag s2"&gt;&lt;a href="france.html"&gt;France&lt;/a&gt;&lt;/span&gt;
 &lt;span class="tag s2"&gt;&lt;a href="ireland.html"&gt;Ireland&lt;/a&gt;&lt;/span&gt;
 &lt;span class="tag s0"&gt;&lt;a href="somalia.html"&gt;Somalia&lt;/a&gt;&lt;/span&gt;
 &lt;span class="tag s5"&gt;&lt;a href="uk.html"&gt;UK&lt;/a&gt;&lt;/span&gt; &lt;/div&gt;&lt;/div&gt;

  &lt;/body&gt;
&lt;/html&gt;
</pre>


## Resources

* tagcloudbase https://rubygems.org/gems/tagcloudbase

tagcloudbase gem tagcloud

