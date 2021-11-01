const { Client } = require('pg')

const client = new Client()
const tables = ["table1", "table2", "table3", "table4"];
const dbName = "dbName";

client.connect()
.then(()=> {
    db.statsAsync(function (err, result) {
        if(db.db === 'databaseThatDoesntExist'){
            client.query('CREATE DATABASE ' + dbName, function(err) { 
                if (!err) {
                    tables.forEach((table => {
                        client.query('CREATE TABLE ' + table, function(err) {
                            if(err){
                                console.log(err);
                                break; 
                            }
                        });
                    }));
                }
                else {
                    console.log(err);
                }
                client.end();
            });
        }
     });
    })
.catch(e => console.log(e))
