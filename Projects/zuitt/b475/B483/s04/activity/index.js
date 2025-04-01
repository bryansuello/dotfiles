// MongoDB CRUD Operations Activity Template:

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


// 3. Insert multiple rooms (insertMany method) in the rooms collection:

async function addManyFunc(db) {
  await (
    db.collection('rooms').insertMany([
      {
        name: "interior cabin",
        accommodates: 2,
        price: 2000,
        description: "A simple room with all the basic necessities",
        rooms_available: 100,
        isAvailable: true
      },
      {
        name: "balcony cabin",
        accommodates: 2,
        price: 7000,
        description: "A room with a queen-sized bed for a simple celebration",
        rooms_available: 50,
        isAvailable: true
      },
      {
        name: "executive suites",
        accommodates: 4,
        price: 9000,
        description: "A room designed for those who want to enjoy the cruise in luxury and style",
        rooms_available: 25,
        isAvailable: true
      }
    ])
  );
  return db;
};

// 4. Use the find method to search for a room with a price greater than 8000 and only display the name, price, and rooms_available.
async function findRoomPriceGreaterThan(db) {
  return await (
    db.collection('rooms').find(
      { price: { $gt: 8000 } },
      { projection: { _id: 0, name: 1, price: 1, rooms_available: 1 } }
    ).toArray()
  );
};

// 5. Use the find method to search for a room with a price greater than 5000 and only display the name, price, and rooms_available.
async function findRoomPriceLessThan(db) {
  return await (
    db.collection('rooms').find(
      { price: { $gt: 5000 } },
      { projection: { _id: 0, name: 1, price: 1, rooms_available: 1 } }
    ).toArray()
  );
};

// 6. Use the find method to search for a room with a price greater than 10000 and 20 or more rooms available, only display the name, price, and rooms_available.
async function findRoomByPriceAndRoomCount(db) {
  return await (
    db.collection('rooms').find(
      { price: { $gt: 10000 }, rooms_available: { $gte: 20 } },
      { projection: { _id: 0, name: 1, price: 1, rooms_available: 1 } }
    ).toArray()
  );
};

// 7. Use the find method to search for a room with a price less than 10000 or with 30 or less rooms available, only display the name, price, and rooms_available.
async function findRoomByPriceOrRoomCount(db) {
  return await (
    db.collection('rooms').find(
      { $or: [{ price: { $lt: 10000 } }, { rooms_available: { $lte: 30 } }] },
      { projection: { _id: 0, name: 1, price: 1, rooms_available: 1 } }
    ).toArray()
  );
};

// 8. Use the find method to search for a room with accommodations less than or equal to 3 and price less than 8000, only display the name, accommodates, and price.
async function findRoomByAccomodation(db) {
  return await (
    db.collection('rooms').find(
      { accommodates: { $lte: 3 }, price: { $lt: 8000 } },
      { projection: { _id: 0, name: 1, accommodates: 1, price: 1 } }
    ).toArray()
  );
};

// 9. Use the find method to search for a room with accommodations greater than or equal to 4 and price less than 8000, only display the name, accommodates, and price.
async function findRoomByAccomodationAndPrice(db) {
  return await (
    db.collection('rooms').find(
      { accommodates: { $gte: 4 }, price: { $lt: 8000 } },
      { projection: { _id: 0, name: 1, accommodates: 1, price: 1 } }
    ).toArray()
  );
};

// 10. Use the find method to search for rooms with the names "ocean view cabin" and "executive suites", excluding the _id field.
async function findRoomByInName(db) {
  return await (
    db.collection('rooms').find(
      { name: { $in: ["ocean view cabin", "executive suites"] } },
      { projection: { _id: 0, name: 1 } }
    ).toArray()
  );
};

// 11. Use the find method to search for rooms where accommodates is not equal to 50 or 5, only display the name and accommodates.
async function findRoomByAccomodationNotEqualTo(db) {
  return await (
    db.collection('rooms').find(
      { accommodates: { $ne: 50 }, accommodates: { $ne: 5 } },
      { projection: { _id: 0, name: 1, accommodates: 1 } }
    ).toArray()
  );
}

try {
  module.exports = {
    addManyFunc,
    findRoomPriceGreaterThan,
    findRoomPriceLessThan,
    findRoomByPriceAndRoomCount,
    findRoomByPriceOrRoomCount,
    findRoomByAccomodation,
    findRoomByAccomodationAndPrice,
    findRoomByInName,
    findRoomByAccomodationNotEqualTo
  };
} catch (err) {
  console.error(err);
};
