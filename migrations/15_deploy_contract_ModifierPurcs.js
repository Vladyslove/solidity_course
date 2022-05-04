var ModifierPurchase = artifacts.require("./ModifierPurchase.sol");

module.exports = function(deployer) {
  deployer.deploy(ModifierPurchase);
};
