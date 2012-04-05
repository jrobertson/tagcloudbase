#Introducing the tagcloudbase gem

    require 'tagcloudbase'

    all_tags = {Egypt: 45, UK: 103, France: 56, Belgium: 53, Ireland: 49, China: 256, Somalia: 21}.to_a
    puts TagCloudBase.new(all_tags).to_dynarex.to_xml pretty: true

output:

    <?xml version='1.0' encoding='UTF-8'?>
    <tags>
      <summary>
        <recordx_type>dynarex</recordx_type>
        <format_mask>[!name] [!gauge] [!count]</format_mask>
        <schema>tags/tag(name,gauge,count)</schema>
      </summary>
      <records>
        <tag id='1' created='2012-04-05 11:20:57 +0100' last_modified=''>
          <name>Belgium</name>
          <gauge>2</gauge>
          <count>53</count>
        </tag>
        <tag id='2' created='2012-04-05 11:20:57 +0100' last_modified=''>
          <name>China</name>
          <gauge>8</gauge>
          <count>256</count>
        </tag>
        <tag id='3' created='2012-04-05 11:20:57 +0100' last_modified=''>
          <name>Egypt</name>
          <gauge>2</gauge>
          <count>45</count>
        </tag>
        <tag id='4' created='2012-04-05 11:20:57 +0100' last_modified=''>
          <name>France</name>
          <gauge>2</gauge>
          <count>56</count>
        </tag>
        <tag id='5' created='2012-04-05 11:20:58 +0100' last_modified=''>
          <name>Ireland</name>
          <gauge>2</gauge>
          <count>49</count>
        </tag>
        <tag id='6' created='2012-04-05 11:20:58 +0100' last_modified=''>
          <name>Somalia</name>
          <gauge>0</gauge>
          <count>21</count>
        </tag>
        <tag id='7' created='2012-04-05 11:20:58 +0100' last_modified=''>
          <name>UK</name>
          <gauge>5</gauge>
          <count>103</count>
        </tag>
      </records>
    </tags>


The actual tag cloud can be rendered in HTML using XSLT and CSS.

