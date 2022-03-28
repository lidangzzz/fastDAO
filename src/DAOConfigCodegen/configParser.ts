

/*
  * Read the DAOConfig.json file, parse the JSON data and export as a JSON object.
*/


import fs from "fs";
function readDAOConfigJSONFile():JSON {
  return JSON.parse(fs.readFileSync(getDAOConfigJSONFileName(), "utf8"));
}


/*
  * Get the DAO configuration json file name.
*/
function getDAOConfigJSONFileName() {
  return "DAOConfig.json";
}

/*
  * Validate the DAO configuration json file and check
    if the required fields are present.
*/
function validateDAOConfigJSONstructure(DAOConfigJSON: JSON){
  console.log(DAOConfigJSON);
  /*
  for (const x in DAOConfigJSON) {
    if (DAOConfigJSON.hasOwnProperty(x)) {
      const element = DAOConfigJSON[x];
      if (element === null || element === undefined) {
        throw new Error("DAOConfigJSON: " + x + " is missing!");
      }
    }
  }
  */
}

/*
  * The core function of the DAO configuration JSON file parser
*/
function configParser():JSON {
  const DAOConfigJSON = readDAOConfigJSONFile();
  validateDAOConfigJSONstructure(DAOConfigJSON);
  return DAOConfigJSON;
}


export {
  configParser
}