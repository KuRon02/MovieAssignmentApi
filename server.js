import express from 'express';
var app = express();

const port = process.env.port || 3001;

// Raw Endpoints

// GET / A simple welcome endpoint

app.get('/', (req, res)=> res.send('Welcome to the Movie API!'));

// GET /movie - Get all movies
app.get('/movie', (req, res) => {
    res.status(200).json([
        { movieId, movieName: 'The Terminator', movieYear: 1984, genreName: 'Action' },
        { movieId, movieName: 'Borat', movieYear: 2006, genreName: 'Comedy' },
        { movieId, movieName: 'Interstellar', movieYear: 2014, genreName: 'Drama' }
    ]);
});

// POST /reviews - Add a new review
app.post('/reviews', (req, res) => {
    const newReview = req.body;
    res.status(201).json({
        message: 'Review added successfully',
        review: newReview
    });
});

// Start the server
app.listen(3001, () => {
    console.log('Server running on http://localhost:3001');
});