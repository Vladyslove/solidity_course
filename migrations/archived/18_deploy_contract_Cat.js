var Cat = artifacts.require("./Cat.sol");

module.exports = function(deployer) {
  deployer.deploy(Cat);
};
