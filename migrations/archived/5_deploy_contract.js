var GettersAndSetter = artifacts.require("./GettersAndSetter.sol");

module.exports = function(deployer) {
  deployer.deploy(GettersAndSetter);
};
