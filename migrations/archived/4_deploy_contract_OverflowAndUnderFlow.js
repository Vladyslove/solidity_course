var OverflowAndUnderFlow = artifacts.require("./OverflowAndUnderFlow.sol");

module.exports = function(deployer) {
  deployer.deploy(OverflowAndUnderFlow);
};
