const express = require('express')
var cors = require('cors')
const app = express()
const port = 3000
app.use(cors())
app.use(express.json())
app.use(express.static('kepek'))

app.get('/', (req, res) => {
  res.send('Hello World!')
})


app.get('/anyagok', (req, res) => {

    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'anyagok'
    })
    
    connection.connect()
    
    connection.query('SELECT `anyag_id`,`anyag_neve`,anyag_fajtak.anyag_fajtaja,`anyag_leiras`,`anyag_merete`,`anyag_ar`,`anyag_kep` FROM `anyag` INNER JOIN anyag_fajtak ON anyag.anyag_fajtaja = anyag_fajtak.anyag_fajta_id', function (err, rows, fields) {
      if (err) throw err
    
      console.log(rows)
      res.send(rows)
    })
    
    connection.end()


  
  })

  app.get('/fajtak', (req, res) => {

    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'anyagok'
    })
    
    connection.connect()
    
    connection.query('SELECT * from anyag_fajtak', function (err, rows, fields) {
      if (err) throw err
    
      console.log(rows)
      res.send(rows)
    })
    
    connection.end()


  
  })

  app.post('/uj_rendeles_fel', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'anyagok'
    })
    connection.connect()

    connection.query('INSERT INTO rendeles VAlUES (NULL,"'+req.body.bev1+'",'+req.body.bev2+',"'+req.body.bev3+'",'+req.body.bev4+', 0)', function (err, rows, fields) {
      if (err) throw err
    
      res.send("Rendelés sikeresen leadva!");
    })
    
    connection.end()

  })

  app.get('/anyagnevek', (req, res) => {

    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'anyagok'
    })
    
    connection.connect()
    
    connection.query('SELECT `anyag_id`,`anyag_neve` from anyag', function (err, rows, fields) {
      if (err) throw err
    
      console.log(rows)
      res.send(rows)
    })
    
    connection.end()


  
  })

  app.listen(port, () => {
    console.log(`Example app listening at http://localhost:${port}`)
  })