const czfBeltBnb = artifacts.require("czfBeltBnb");

module.exports = function (deployer) {
  deployer.deploy(czfBeltBnb,100000);
};
