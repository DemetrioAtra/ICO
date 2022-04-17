const DevDToken = artifacts.require("DevDToken");
const DevDTokenSale = artifacts.require("DevDTokenSale");

module.exports = function (deployer) {
  deployer.deploy(DevDToken, 1000000);
  deployer.deploy(DevDTokenSale);
};
