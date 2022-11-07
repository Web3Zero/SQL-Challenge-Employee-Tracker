
// view department
function getDepartment() {
const query = "SELECT * FROM departments";

const connection = await connect();

const [rows, cols] = await connection.query(query);

return rows;

}


// add department
async function createDepartment(name) {

    const query = INSERT INTO \`departments\` (\`name\`) VALUES ('?')`;
   
    // run query
    const connection = await connect();
    
    return connection.query(query, [name])

}

module.exports = {
    viewDepartment,
    createDepartment,
}