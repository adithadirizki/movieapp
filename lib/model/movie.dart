class Movie {
  String title;
  String description;
  int releaseYear;
  List<String> genre;
  double rating;
  int duration;
  String director;
  List<Cast> cast;
  String posterUrl;

  Movie({
    required this.title,
    required this.description,
    required this.releaseYear,
    required this.genre,
    required this.rating,
    required this.duration,
    required this.director,
    required this.cast,
    required this.posterUrl,
  });
}

class Cast {
  String name;
  String role;

  Cast({required this.name, required this.role});
}

var movies = [
  Movie(
    title: "The Dark Knight",
    description:
        "Batman faces the Joker, a criminal mastermind who causes chaos in Gotham.",
    releaseYear: 2008,
    genre: ["Action", "Crime", "Drama"],
    rating: 9.0,
    duration: 152,
    director: "Christopher Nolan",
    cast: [
      Cast(name: "Christian Bale", role: "Bruce Wayne / Batman"),
      Cast(name: "Heath Ledger", role: "The Joker")
    ],
    posterUrl:
        "https://image.tmdb.org/t/p/w500/qJ2tW6WMUDux911r6m7haRef0WH.jpg",
  ),
  Movie(
    title: "The Matrix",
    description:
        "A hacker discovers that reality as he knows it is a simulation.",
    releaseYear: 1999,
    genre: ["Sci-Fi", "Action"],
    rating: 8.7,
    duration: 136,
    director: "The Wachowskis",
    cast: [
      Cast(name: "Keanu Reeves", role: "Neo"),
      Cast(name: "Laurence Fishburne", role: "Morpheus")
    ],
    posterUrl:
        "https://image.tmdb.org/t/p/w500/or06FN3Dka5tukK1e9sl16pB3iy.jpg",
  ),
  Movie(
    title: "The Godfather",
    description:
        "The aging patriarch of an organized crime dynasty transfers control to his reluctant son.",
    releaseYear: 1972,
    genre: ["Crime", "Drama"],
    rating: 9.2,
    duration: 175,
    director: "Francis Ford Coppola",
    cast: [
      Cast(name: "Marlon Brando", role: "Vito Corleone"),
      Cast(name: "Al Pacino", role: "Michael Corleone")
    ],
    posterUrl:
        "https://image.tmdb.org/t/p/w500/f89U3ADr1oiB1s9GkdPOEpXUk5H.jpg",
  ),
  Movie(
    title: "Pulp Fiction",
    description:
        "The lives of two mob hitmen, a boxer, and others intertwine in four tales of violence.",
    releaseYear: 1994,
    genre: ["Crime", "Drama"],
    rating: 8.9,
    duration: 154,
    director: "Quentin Tarantino",
    cast: [
      Cast(name: "John Travolta", role: "Vincent Vega"),
      Cast(name: "Samuel L. Jackson", role: "Jules Winnfield")
    ],
    posterUrl:
        "https://image.tmdb.org/t/p/w500/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg",
  ),
  Movie(
    title: "Fight Club",
    description:
        "An insomniac office worker and a soap maker form an underground fight club.",
    releaseYear: 1999,
    genre: ["Drama"],
    rating: 8.8,
    duration: 139,
    director: "David Fincher",
    cast: [
      Cast(name: "Brad Pitt", role: "Tyler Durden"),
      Cast(name: "Edward Norton", role: "The Narrator")
    ],
    posterUrl:
        "https://image.tmdb.org/t/p/w500/plnlrtBUULT0rh3Xsjmpubiso3L.jpg",
  ),
  Movie(
    title: "Forrest Gump",
    description:
        "The presidencies of Kennedy and Johnson, the Vietnam War, and more through the eyes of Forrest Gump.",
    releaseYear: 1994,
    genre: ["Drama", "Romance"],
    rating: 8.8,
    duration: 142,
    director: "Robert Zemeckis",
    cast: [
      Cast(name: "Tom Hanks", role: "Forrest Gump"),
      Cast(name: "Robin Wright", role: "Jenny Curran")
    ],
    posterUrl:
        "https://image.tmdb.org/t/p/w500/a26cQPRhJPX6GbWfQbvZdrrp9j9.jpg",
  ),
  Movie(
    title: "The Shawshank Redemption",
    description:
        "Two imprisoned men bond over a number of years, finding solace and eventual redemption.",
    releaseYear: 1994,
    genre: ["Drama"],
    rating: 9.3,
    duration: 142,
    director: "Frank Darabont",
    cast: [
      Cast(name: "Tim Robbins", role: "Andy Dufresne"),
      Cast(name: "Morgan Freeman", role: "Ellis Boyd 'Red' Redding")
    ],
    posterUrl:
        "https://image.tmdb.org/t/p/w500/iVZ3JAcAjmguGPnRNfWFOtLHOuY.jpg",
  ),
  Movie(
    title: "The Lord of the Rings: The Fellowship of the Ring",
    description:
        "A meek Hobbit and eight companions set out on a journey to destroy a powerful ring.",
    releaseYear: 2001,
    genre: ["Adventure", "Fantasy"],
    rating: 8.8,
    duration: 178,
    director: "Peter Jackson",
    cast: [
      Cast(name: "Elijah Wood", role: "Frodo Baggins"),
      Cast(name: "Ian McKellen", role: "Gandalf")
    ],
    posterUrl:
        "https://image.tmdb.org/t/p/w500/6oom5QYQ2yQTMJIbnvbkBL9cHo6.jpg",
  ),
  Movie(
    title: "Gladiator",
    description:
        "A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family.",
    releaseYear: 2000,
    genre: ["Action", "Adventure", "Drama"],
    rating: 8.5,
    duration: 155,
    director: "Ridley Scott",
    cast: [
      Cast(name: "Russell Crowe", role: "Maximus"),
      Cast(name: "Joaquin Phoenix", role: "Commodus")
    ],
    posterUrl:
        "https://image.tmdb.org/t/p/w500/ty8TGRuvJLPUmAR1H1nRIsgwvim.jpg",
  ),
  Movie(
    title: "The Avengers",
    description:
        "Earth's mightiest heroes must come together to stop the mischievous Loki.",
    releaseYear: 2012,
    genre: ["Action", "Sci-Fi"],
    rating: 8.0,
    duration: 143,
    director: "Joss Whedon",
    cast: [
      Cast(name: "Robert Downey Jr.", role: "Tony Stark / Iron Man"),
      Cast(name: "Chris Evans", role: "Steve Rogers / Captain America")
    ],
    posterUrl: "https://image.tmdb.org/t/p/w500/RYMX2wcKCBAr24UyPD7xwmjaTn.jpg",
  ),
  Movie(
    title: "Jurassic Park",
    description:
        "A pragmatic paleontologist visiting an almost complete theme park is tasked with protecting a couple of kids after a power failure.",
    releaseYear: 1993,
    genre: ["Adventure", "Sci-Fi"],
    rating: 8.1,
    duration: 127,
    director: "Steven Spielberg",
    cast: [
      Cast(name: "Sam Neill", role: "Dr. Alan Grant"),
      Cast(name: "Laura Dern", role: "Dr. Ellie Sattler")
    ],
    posterUrl:
        "https://image.tmdb.org/t/p/w500/9i3plLl89DHMz7mahksDaAo7HIS.jpg",
  ),
  Movie(
    title: "Avatar",
    description:
        "A paraplegic Marine is dispatched to the moon Pandora on a unique mission, but becomes torn between following orders and protecting the world he feels is his home.",
    releaseYear: 2009,
    genre: ["Action", "Adventure", "Fantasy"],
    rating: 7.8,
    duration: 162,
    director: "James Cameron",
    cast: [
      Cast(name: "Sam Worthington", role: "Jake Sully"),
      Cast(name: "Zoe Saldana", role: "Neytiri")
    ],
    posterUrl:
        "https://image.tmdb.org/t/p/w500/6EiRUJpuoeQPghrs3YNktfnqOVh.jpg",
  ),
  Movie(
    title: "Star Wars: Episode IV - A New Hope",
    description:
        "Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, and two droids to save the galaxy.",
    releaseYear: 1977,
    genre: ["Action", "Adventure", "Fantasy"],
    rating: 8.6,
    duration: 121,
    director: "George Lucas",
    cast: [
      Cast(name: "Mark Hamill", role: "Luke Skywalker"),
      Cast(name: "Harrison Ford", role: "Han Solo")
    ],
    posterUrl:
        "https://image.tmdb.org/t/p/w500/6FfCtAuVAW8XJjZ7eWeLibRLWTw.jpg",
  ),
  Movie(
    title: "The Lion King",
    description:
        "Lion prince Simba and his father are targeted by his bitter uncle, who wants to ascend the throne.",
    releaseYear: 1994,
    genre: ["Animation", "Adventure", "Drama"],
    rating: 8.5,
    duration: 88,
    director: "Roger Allers",
    cast: [
      Cast(name: "Matthew Broderick", role: "Simba"),
      Cast(name: "Jeremy Irons", role: "Scar")
    ],
    posterUrl:
        "https://image.tmdb.org/t/p/w500/sKCr78MXSLixwmZ8DyJLrpMsd15.jpg",
  ),
  Movie(
    title: "The Departed",
    description:
        "An undercover cop and a mole in the police attempt to identify each other whileinfiltratingan Irish gang.",
    releaseYear: 2006,
    genre: ["Crime", "Drama", "Thriller"],
    rating: 8.5,
    duration: 151,
    director: "Martin Scorsese",
    cast: [
      Cast(name: "Leonardo DiCaprio", role: "Billy Costigan"),
      Cast(name: "Matt Damon", role: "Colin Sullivan")
    ],
    posterUrl:
        "https://image.tmdb.org/t/p/w500/jyAgiqVSx5fl0NNj7WoGGKweXrL.jpg",
  ),
];
