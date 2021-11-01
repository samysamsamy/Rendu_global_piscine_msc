const { Client } = require('pg')

const client = new Client()
const tables = ["clocks", "schema_migrations", "tasks", "users", "workingtimes"];
const dbName = "timemanager_api_dev";

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
