var ModifierOwned = artifacts.require("./ModifierOwned.sol");

module.exports = function(deployer) {
  deployer.deploy(ModifierOwned);
};
