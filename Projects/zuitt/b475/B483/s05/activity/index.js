/* 1. In the activity folder, create an index.js file and copy the contents from template.js. Read and understand the additional instructions from the template.

2. Create 2 new collections in the database called sales and customers. Insert a mock data for each collection with the following properties:

- sales
    - product - string
    - category - string
    - quantity - number
    - price - number

- customers
    - name - string
    - age - number
    - gender - string
    - region - string
 */
async function insertSales(db) {
  return await db.collection('sales').insertMany([
    { product: "A", quantity: 2, price: 100, date: new Date() },
    { product: "B", quantity: 3, price: 50, date: new Date() },
    { product: "C", quantity: 1, price: 200, date: new Date() }
  ]);
}

async function insertCustomers(db) {
  return await db.collection('customers').insertMany([
    { name: "John", age: 35, gender: "Male", region: "North" },
    { name: "Alice", age: 28, gender: "Female", region: "South" },
    { name: "Bob", age: 45, gender: "Male", region: "East" }
  ]);
}

/* 
3. Calculate total sales revenue for each product using $group and $sum.
*/
async function totalRevenue(db) {
  return await db.collection('sales').aggregate([
    {
      $group: {
        _id: "$product",
        totalRevenue: { $sum: { $multiply: ["$price", "$quantity"] } }
      }
    }
  ]).toArray();
}

/* 
4. Count the number of customers per region using $group and $sum.
*/
async function customersPerRegion(db) {
  return await db.collection('customers').aggregate([
    {
      $group: {
        _id: "$region",
        customerCount: { $sum: 1 }
      }
    }
  ]).toArray();
}

/* 
5. Analyze customer demographics by age group using $match and $group.
*/
async function demographicsByAge(db) {
  return await db.collection('customers').aggregate([
    {
      $group: {
        _id: {
          ageGroup: {
            $cond: [
              { $lt: ["$age", 26] }, "18-25",
              { $cond: [{ $lt: ["$age", 36] }, "26-35", "36-45"] }
            ]
          }
        },
        count: { $sum: 1 }
      }
    }
  ]).toArray();
}

/* 
6. Determine average order value using $group and $avg.
*/
async function orderAverage(db) {
  return await db.collection('sales').aggregate([
    {
      $group: {
        _id: null,
        avgOrderValue: { $avg: { $multiply: ["$price", "$quantity"] } }
      }
    }
  ]).toArray();
}

/* 
7. Explore product popularity trends over time using $project, $group, and $sort.
*/
async function productPopularity(db) {
  return await db.collection('sales').aggregate([
    {
      $project: {
        product: 1,
        date: { $dateToString: { format: "%Y-%m-%d", date: "$date" } }
      }
    },
    {
      $group: {
        _id: { product: "$product", date: "$date" },
        totalSold: { $sum: "$quantity" }
      }
    },
    { $sort: { "_id.date": 1 } }
  ]).toArray();
}

try {
  module.exports = {
    insertSales,
    insertCustomers,
    totalRevenue,
    customersPerRegion,
    demographicsByAge,
    orderAverage,
    productPopularity
  };
} catch (err) {
  console.error(err);
}
