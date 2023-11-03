# Sancbook
This is my 2nd project at General Assembly Software Engineering Immersive Course. Although the development time is only about a week, I believe I have created the largest online social media and social networking platform about sanctions in the world. On the platform, users can suggest who to sanction, participate in discussion and send direct messages to other users. Hopefuly one day some government would notice their requests and sanctions strategies can be deployed accordingly.
Plesae visit the largest social media platform (about sanctions) here: https://sancbook.herokuapp.com/
Unfortunately, it has been taken down because I don't want to pay the monthly fee, but you can watch the video about this project below.
<br /> <br /> 
https://youtu.be/7fH1DrjlxoU/
<br /> <br /> 

### Gems and APIs used
---

#### Gon
This gem allows me to set global variables in the Ruby code that can be accessed by JavaScript code running in the browser, so that the world map on my home page can be more dynamic and interactive. In other words, any changes in the database, such as number of countries or number of sanctions would affect how the world map react.

#### Google Custom Search JSON API
Since every country has their own wikipage and some of the sanctions are high-profile individual. It should be great if I could get an articile for each of them from Wikipedia. I am not using MediaWiki's API here but instead I use Google Search API combining with DBpedia. I use Google Search API and search by country/sanction name plus the keyword 'Wikipedia' and the first result would be their wikipage if they have one. Then I access the information through DBpedia.


#### Nokogiri
I use this gem to parse the HTML files of DBpedia's pages so as to get the information I need for every country and those more high-profile sanctions.

#### YouTube Data API
This API is using to scrape national anthems from Youtube.

#### Cloudinary
Since I worry the urls of image may expire one day, I use Cloudinary to upload them to my own account.

#### REST Countries
In this project, I didn't plan to let users add countries by themselves to the database but rather countries would be added automatically when users create sanctions. Therefore, I have employed this API to fetch country information such as their country name, country code, native official name and most importantly piture of their country flag.

#### Countries
As the time of writing this README, the REST Countries is experiencing a down time. As a result, I need a backup solution. This gem is not as good as REST Countries in my opinion as it doesn't have all the information I need, but at least it could give me the alpha-2 code for each country.

#### Ajax
Instant messaging using Ajax. This is achieved by refreshing only a particular div instead of the whole page when there are new messages.

<br /> <br /> 

### Features
---

#### Message noticfication


