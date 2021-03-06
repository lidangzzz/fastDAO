import {ethers} from 'hardhat';
import {expect} from 'chai';


describe("Greeter", function () {
  it("Should return the new greeting once it's changed", async function () {
    console.log("Running fastDAO unit test in TypeScript");
    const Greeter = await ethers.getContractFactory("Greeter");
    const greeter = await Greeter.deploy("Hello, world!");
    await greeter.deployed();

    expect(await greeter.greet()).to.equal("Hello, world!");

    const setGreetingTx = await greeter.setGreeting("Hola, mundo!");

    // wait until the transaction is mined
    await setGreetingTx.wait();

    expect(await greeter.greet()).to.equal("Hola, mundo!");




    const setATx = await greeter.setA(100);
    await setATx.wait();
    expect(await greeter.getA()).to.equal(100);
    console.log(await greeter.getA());


  });
});
