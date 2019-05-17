

to make the app work follow the steps:






1) Download a free software tool (sql) from here:https://www.phpmyadmin.net/ in order to create a database
2) install phpMyAdmin
3) open phpMyAdmin and click start on Apache, then click start on mySQL
4) The Admin button on MySQL will become available now. Click on it
5) on the top you will see an import button. Click on it and import the file named cellxpert_test
6) go to your text editor and open the folder named TESTDATA+SERVER
7) go to file named index.js
8) run the file in the browser (npm start or nodemon)

9) 

    <!-- to see affiliate word go to : -->

    http://localhost:3000/fetchtweets?s=affiliate   in the browser

   <!-- to see marketing word go to : -->

   http://localhost:3000/fetchtweets?s=marketing

   <!-- to see influencer word go to : -->

   http://localhost:3000/fetchtweets?s=influencer


   <!-- to find a spasific word go to : -->
    
    http://localhost:3000/fetchtweets?s=

    and after the = sing, enter your word. For example:

    http://localhost:3000/fetchtweets?s=affiliate will find affiliate word 

    to see the count of the words: marketing, influencer and affiliate
    go to :
    http://localhost:3000/tweet-report



////Thank you/////