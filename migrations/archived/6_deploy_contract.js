var FixedSizedArray = artifacts.require("./FixedSizedArray.sol");

module.exports = function(deployer) {
  deployer.deploy(FixedSizedArray);
};
