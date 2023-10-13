const express = require('express')
const app = express()
const port = 3000
const host = '0.0.0.0'
const config = {
  host: 'mysql-fc',
  user: 'root',
  password: 'root',
  database:'nodedb'
};
const mysql = require('mysql')
const connection = mysql.createConnection(config)

app.get('/', (req,res) => {
  connection.query('SELECT * FROM users', (err,rows) => {
    if(err) throw err;
    full_names = '<h1>Full Cycle Rocks!</h1>\n<ul>'
    rows.forEach( (row) => {
      full_names = full_names + `\n<li>${row.name}</li>`
    });
    full_names = full_names + '\n</ul>'
    res.send(full_names)
  });
})

app.get('/api/v1/users/:name', (req,res) => {
  connection.query(`INSERT INTO users(name) values('${req.params.name}')`)
  res.status(200).json({"message": "Created!"})
})

app.listen(port, host, ()=> {
    console.log('Rodando na porta ' + port + ' com host ' + host)
})
