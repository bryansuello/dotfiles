//insertOne
db.users.insertOne({
  firstName: "Test",
  lastName: "Test",
  age: 0,
  contact: {
    phone: "00000000",
    email: "test@gmail.com"
  },
  courses: [],
  department: "none"
});


//insertMany
db.users.insertMany([
  {
    firstName: "Stephen",
    lastName: "Hawking",
    age: 76,
    contact: {
      phone: "87654321",
      email: "stephenhawking@gmail.com"
    },
    courses: ["Python", "React", "PHP"],
    department: "none"
  },
  {
    firstName: "Neil",
    lastName: "Armstrong",
    age: 82,
    contact: {
      phone: "87654321",
      email: "neilarmstrong@gmail.com"
    },
    courses: ["React", "Laravel", "Sass"],
    department: "none"
  }
]);



//[Finding documents] - Read/Retrieve - in CRUD
// Leaving the search criteria empty will retrieve all the documents
db.users.find();

db.users.find({ firstName: "Stephen" })

// [Updating documents] - Update - in CRUD
db.users.updateOne(
  { firstName: "Test" },
  {
    $set: {
      firstName: "Bill",
      lastName: "Gates",
      age: 65,
      contact: {
        phone: "12345678",
        email: "bill@gmail.com"
      },
      courses: ["PHP", "Laravel", "HTML"],
      department: "Operations",
      status: "active"
    }
  }
);
