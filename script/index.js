module.exports = async function main (callback) {
    try {
        // code

        callback(0);
        } catch (error) {
            console.error(error);
            callback(1);
    }


    // Retrieve accounts from the local node
    const accounts = await web3.eth.getAccounts();
    console.log(accounts)

}