const express = require('express')
const app = express()
const port = 5000

const mysql = require('mysql')
const bodyParser = require('body-parser')


const con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "smaki_swiata"
  });
  
  con.connect((err) => {
      if (err) throw err;
      console.log("Connected to the database!");
  });

app.use(bodyParser.urlencoded({ extended: true }));





app.post('/kontakt-form', (req, res) => {
    const val = [req.body.ImieNazwisko, req.body.Email, req.body.Wiadomosc]
    const sql = `INSERT INTO kliencipytania (Imie_i_Nazwisko, Email, Wiadomosc) VALUES (?)`
    con.query(sql, [val], (err, dat) => {
      if (err) res.send("Błąd")
      console.log("formularz działa!")
      res.redirect("http://localhost:3001/kontakt")
    });
  });


app.get('/', (req, res) => {
    const sql = 'SELECT * FROM kuchniezdjecia'
    con.query(sql, (err, dat) => {
        if (err) throw err;
        return res.json(dat)
    });
});



//kuchniaPolska
app.get('/kuchnia_polska', (req, res) => {
  const sql = 'SELECT * FROM `jedzenie` WHERE Kraj = "Polska";';
  con.query(sql, (err, data) => {
      if (err) throw err;
      console.log(data);
      return res.json(data);
  });
});


//kuchniaFrancuska
app.get('/kuchnia_francuska', (req, res) => {
  const sql = 'SELECT * FROM `jedzenie` WHERE Kraj = "Francja";';
  con.query(sql, (err, data) => {
      if (err) throw err;
      console.log(data);
      return res.json(data);
  });
});

//kuchniaWłoska
app.get('/kuchnia_wloska', (req, res) => {
  const sql = 'SELECT * FROM `jedzenie` WHERE Kraj = "Włochy";';
  con.query(sql, (err, data) => {
      if (err) throw err;
      console.log(data);
      return res.json(data);
  });
});


app.get('/o_nas', (req, res) => {
  const sql = 'SELECT * FROM `pracownicy`;';
  con.query(sql, (err, data) => {
      if (err) throw err;
      console.log(data);
      return res.json(data);
  });
});

app.listen(port, () => console.log(`Example app listening on port ${port}!`))