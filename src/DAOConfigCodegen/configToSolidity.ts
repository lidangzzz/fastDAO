/*
  * The core function to generate the DAO configuration solidity source code from ConfigJSON.
*/
function configToSolidity(DAOConfigJSON: JSON):string {
  let strDAOConfigurationCode = "";
  strDAOConfigurationCode += generateHdeader();
  strDAOConfigurationCode += generateTail();
  return strDAOConfigurationCode;
}


/*
  * Generate the solidity header.
*/
function generateHdeader() {
  const strHeader = "pragma solidity >=0.8.9;\n\ncontract DAOConfig{\n\n";
  return strHeader;
}

/*
  * Generate the solidity tail.
*/
function generateTail() {
  const strTail = "\n\n}\n";
  return strTail;
}


export{
  configToSolidity
}