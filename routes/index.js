var express = require('express');
var router = express.Router();
var mysql = require('promise-mysql');
const fetch = require('node-fetch');



var pool = mysql.createPool({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'cellxpert_test',
  connectionLimit: 10
});




router.get('/start', async (req, res) => {


// ///////////////////////////////////////////////////////////////////get affiliate words


  fetch('https://api.datamuse.com/words?sp=affiliate')
    .then(resp => resp.json())
    .then(async wordarry => {
      for (let i = 0; i < wordarry.length; i++) {
        let insertQuery = ` 
      INSERT INTO affiliate (name)  
      VALUES ('${wordarry[i].word}')
       ` ;
        console.log(insertQuery);
        let data = await pool.query(insertQuery)
      }
    });


// ///////////////////////////////////////////////////////////////////get influencer words

  fetch('https://api.datamuse.com/words?sp=influencer')
    .then(resp => resp.json())
    .then(async influencerarry => {
      for (let i = 0; i < influencerarry.length; i++) {
        let insertQuery = ` 
        INSERT INTO influencer (name)  
        VALUES ('${influencerarry[i].word}')
         ` ;
        console.log(insertQuery);
        let data = await pool.query(insertQuery)
      }
    });

// ///////////////////////////////////////////////////////////////////get marketing words

  fetch('https://api.datamuse.com/words?sp=marketing')
    .then(resp => resp.json())
    .then(async marketingarry => {
      for (let i = 0; i < marketingarry.length; i++) {
        let insertQuery = ` 
          INSERT INTO marketing (name)  
          VALUES ('${marketingarry[i].word}')
           ` ;
        console.log(insertQuery);
        let data = await pool.query(insertQuery)
      }
    });

  res.send("all data is in");




});
// ///////////////////////////////////////////////////////////////////////////////words search
// http://localhost:3000/fetchtweets?s=affiliate   type in url to fetch affiliate 
// http://localhost:3000/fetchtweets?s=marketing   type in url to fetch marketing 
// http://localhost:3000/fetchtweets?s=influencer  type in url to fetch influencer 

router.get('/fetchtweets', async (req, res) => {
  var search = req.query.s;
  let data = await pool.query('SELECT * FROM ' + search);
  res.json(data);
});



// ///////////////////////////////////////////////////////////////////////////////report words count 

router.get('/tweet-report', async (req, res) => {
  var search = req.query.s;
  let affiliatearr = await pool.query('SELECT * FROM affiliate');
  let influencerarr = await pool.query('SELECT * FROM influencer');
  let marketingarr = await pool.query('SELECT * FROM marketing');
  res.json({
    affiliate: affiliatearr.length,
    influencer: influencerarr.length,
    marketing: marketingarr.length
  });
});

module.exports = router;



