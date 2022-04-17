var DevDTokenSale = artifacts.require("DevDTokenSale");

contract('DevDTokenSale', function(accounts) {
    var tokenSaleInstance;

    //Test
    it('Initializes with the correct values', function(){
        return DevDTokenSale.deployed().then(function(instance){
            tokenSaleInstance = instance;

            //Logic
            return tokenSaleInstance.address;
        }).then(function(address) {
            assert.notEqual(address, 0x0, 'Has contract address');
            return tokenSaleInstance.tokenContract();
        }).then(function(address) {
            assert.notEqual(address, 0x0, 'Has token contract address')
        });
    });
});