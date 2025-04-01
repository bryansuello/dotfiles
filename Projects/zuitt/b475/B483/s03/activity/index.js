// /*

//     Sample solution:

//     async function addOneQuery(db) {
//         await (

//             //add query here

//             db.collectionName.insertOne({
//                 field1: "value1",
//                 field2: "value2"
//             }) //DO NOT ADD SEMICOLON.
//         
//         );
//         
//         return(db);
//     }

// Note: 
//     - Do note change the functionName or modify the exports
//     - Do not add semicolon after query


// 1. Insert an interior cabin room (insertOne method) in the rooms collection:

async function addOneFunc(db) {
  await (
    db.collection('rooms').insertOne({
      name: "interior cabin",
      accommodates: 2,
      price: 2000,
      description: "A simple room with all the basic necessities",
      rooms_available: 100,
      isAvailable: true
    })
  );
  return db;
};


// 2. Insert multiple rooms (insertMany method) in the rooms collection

async function addManyFunc(db) {
  await (
    db.collection('rooms').insertMany([
      {
        name: "balcony cabin",
        accommodates: 2,
        price: 7000,
        description: "A room with a queen-sized bed perfect for a simple celebration",
        rooms_available: 50,
        isAvailable: true
      },
      {
        name: "ocean view cabin",
        accommodates: 4,
        price: 10000,
        description: "A luxurious cabin with a stunning ocean view",
        rooms_available: 20,
        isAvailable: true
      }
    ])
  );
  return db;
};


// 3. Use the findOne method to search for a room with the name ocean view cabin.
async function findRoom(db) {
  return await (
    db.collection('rooms').findOne({ name: "ocean view cabin" })
  );
};


// 4. Use the updateOne method to update the balcony cabin room and set the available rooms to 0.

function updateOneFunc(db) {
  db.collection('rooms').updateOne(
    { name: "balcony cabin" },
    { $set: { rooms_available: 0 } }
  );
};


// 5. Use the replaceOne method to update the availability of the balcony cabin room to false.

async function replaceOneFunc(db) {
  await db.collection('rooms').replaceOne(
    { name: "balcony cabin" },
    {
      name: "balcony cabin",
      accommodates: 2,
      price: 7000,
      description: "A room with a queen-sized bed perfect for a simple celebration",
      rooms_available: 0,
      isAvailable: false
    }
  );
}


// 6. Use the findOneAndUpdate method to delete the balcony cabin room's availability property to false.

async function findOneAndUpdateFunc(db) {
  await db.collection('rooms').findOneAndUpdate(
    { name: "balcony cabin" },
    { $set: { isAvailable: false } }
  );
}


// 7. Use the deleteOne method to delete the executive suites room.

async function deleteOneFunc(db) {
  await db.collection('rooms').deleteOne(
    { name: "executive suites" }
  );
}


// 8. Use the deleteMany method to delete all rooms that have 0 rooms available.

function deleteManyFunc(db) {
  db.collection('rooms').deleteMany(
    { rooms_available: 0 }
  );
};


// 9. Use the findOneAndDelete method to delete a room with the name interior cabin.

async function findOneAndDeleteFunc(db) {
  await db.collection('rooms').findOneAndDelete(
    { name: "interior cabin" }
  );
}

try {
  module.exports = {
    addOneFunc,
    addManyFunc,
    updateOneFunc,
    deleteManyFunc,
    findRoom,
    findOneAndUpdateFunc,
    replaceOneFunc,
    deleteOneFunc,
    findOneAndDeleteFunc
  };
} catch (err) {
  console.error(err);
};


___new
// MongoDB CRUD Operations Activity

/*
Sample solution:

async function addOneQuery(db) {
    await (

        //add query here

        db.collectionName.insertOne({
            field1: "value1",
            field2: "value2"
        }) //DO NOT ADD SEMICOLON.
    
    );
    
    return(db);
}

Note: 
- Do not change the functionName or modify the exports
- Do not add semicolon after query
*/

// 1. Insert an interior cabin room (insertOne method) in the rooms collection:

async function addOneFunc(db) {
  await (
    db.collection("rooms").insertOne({
      name: "interior cabin",
      accommodates: 2,
      price: 2000,
      description: "A simple room with all the basic necessities",
      rooms_available: 100,
      isAvailable: true
    })
  );
  return db;
};

// 2. Insert multiple rooms (insertMany method) in the rooms collection:

async function addManyFunc(db) {
  await (
    db.collection("rooms").insertMany([
      {
        name: "ocean view cabin",
        accommodates: 4,
        price: 4000,
        description: "A room with a view of the ocean",
        rooms_available: 50,
        isAvailable: true
      },
      {
        name: "balcony cabin",
        accommodates: 2,
        price: 7000,
        description: "A room with a queen sized bed perfect for a simple celebration",
        rooms_available: 50,
        isAvailable: true
      },
      {
        name: "family cabin",
        accommodates: 6,
        price: 12000,
        description: "A room fit for a small family out on an adventure",
        rooms_available: 30,
        isAvailable: true
      }
    ])
  );
  return db;
};

// 3. Use the findOne method to search for a room with the name ocean view cabin.
async function findRoom(db) {
  return await (
    db.collection("rooms").findOne({ name: "ocean view cabin" })
  );
};

// 4. Use the updateOne method to update the balcony cabin room and set the available rooms to 0.
function updateOneFunc(db) {
  return db.collection("rooms").updateOne(
    { name: "balcony cabin" },
    { $set: { rooms_available: 0 } }
  );
};

/*
5. Use the replaceOne method to update the availability of the balcony cabin room to false.
    - Look up the use and syntax of replaceOne method
    - Look up the use and syntax of $set operator
*/

async function replaceOneFunc(db) {
  return db.collection("rooms").replaceOne(
    { name: "balcony cabin" },
    { name: "balcony cabin", accommodates: 2, price: 7000, description: "A room with a queen sized bed perfect for a simple celebration", rooms_available: 50, isAvailable: false }
  );
};

// 6. Use the findOneAndUpdate method to delete the balcony cabin room's availability property to false.
async function findOneAndUpdateFunc(db) {
  return db.collection("rooms").findOneAndUpdate(
    { name: "balcony cabin" },
    { $set: { isAvailable: false } }
  );
};

/*
7. Use the deleteOne method to delete the executive suites room.
    - Look up the use and syntax of deleteOne method
*/

async function deleteOneFunc(db) {
  return db.collection("rooms").deleteOne({ name: "executive suites" });
};

// 8. Use the deleteMany method to delete all rooms that have 0 rooms available.
function deleteManyFunc(db) {
  return db.collection("rooms").deleteMany({ rooms_available: 0 });
};

/* 
11. Use the findOneAndDelete method to delete a room with the name interior cabin.
    - Look up the use and syntax of findOneAndDelete method
*/
async function findOneAndDeleteFunc(db) {
  return db.collection("rooms").findOneAndDelete({ name: "interior cabin" });
}

try {
  module.exports = {
    addOneFunc,
    addManyFunc,
    updateOneFunc,
    deleteManyFunc,
    findRoom,
    replaceOneFunc,
    findOneAndUpdateFunc,
    deleteOneFunc,
    findOneAndDeleteFunc
  };
} catch (err) {
  console.error(err);
};

