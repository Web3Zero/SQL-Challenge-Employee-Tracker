
// view department
function getDepartment() {
const query = "SELECT * FROM departments";

const connection = connect();
// const connection = await connect();

const [rows, cols] = connection.query(query);
// const [rows, cols] = await connection.query(query);

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
    getDepartment,
    createDepartment,
}