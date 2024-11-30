import pg from 'pg';

const {Client} = pg;

const client = new Client({
    user: 'postgres',
    password: '1234',
    host: 'localhost',
    port: 5432,
    database: 'postgres'
});

connectDB();

async function connectDB() {
    try{
        await client.connect();
        console.log('Database connected');
    }catch(err){
        console.log(err);
    }
}