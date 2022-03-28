import fs from 'fs';
import * as hre from 'hardhat';
import { configParser } from './configParser';
import { configToSolidity } from './configToSolidity';

/*
  * This is the main function of DAO Configuration Codegenerator.
*/

function generatedDAOConfig() :string{

  let DAOConfigJSON = configParser();
  const strDAOConfigurationCode = configToSolidity(DAOConfigJSON);
  return strDAOConfigurationCode;
}



/*
  * Get the DAO configuration solidity source code's file name.
*/

function getDAOConfigFileName() :string {
  return "DAOConfig.sol";
}

/*
*/
function getDAOConfigPath() :string {
  return ".//contracts//" + getDAOConfigFileName();
}



/*
  * This is the main entry point for the codegen.
*/

async function DAOConfigCodegen() {
  console.log("Starting for DAO Configuration Codegenerator...");


  try{

    // Write the DAO configuration solidity source code to the file.
    fs.writeFile(getDAOConfigPath(), generatedDAOConfig(), err => {
      if (err) {
        console.error(err);
        return;
      }
      console.log("The file was saved!")
    });
  }
  catch(err) {
    console.error(err)
  }

  // After the DAO configuration solidity source code is generated, we can run the compile task.
  await hre.run("compile").then(() => {
    console.log("Compilation finished after DAO configuration generated!");
  }).catch((err) => {
    console.log("Compilation failed after DAO configuration generated!");
    console.error(err);
  });
}


/*
  * Call the main function.
*/
DAOConfigCodegen();

export {
  generatedDAOConfig,
  DAOConfigCodegen
};