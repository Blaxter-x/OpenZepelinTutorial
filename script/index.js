// scripts/index.js
module.exports = async function main (callback) {
    try {
      // Our code will go here
  
      callback(0);
    } catch (error) {
      console.error(error);
      callback(1);
    }

// Send a transaction to store() a new value in the Box
await box.store(23);

// Call the retrieve() function of the deployed Box contract
const value = await box.retrieve();
console.log('Box value is', value.toString());
  };