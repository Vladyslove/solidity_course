var AssertMath = artifacts.require("./AssertMath.sol");

module.exports = function(deployer) {
  deployer.deploy(AssertMath);
};
