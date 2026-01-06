const cds = require("@sap/cds");

module.exports = cds.service.impl(async function (srv) {

    srv.on('testFunction', async (req) => {
        console.log(req.data)
        return "ullas"
    })
    srv.on('myAction', async (req) => {
        console.log(req.data)
        return req.data.name
    })
    srv.on('createEmployee', async () => {
        console.log("Created sucessfully")
        return "ok"
    })

    // Handler Events
    srv.on('READ', 'department', async (req) => {
        console.log("on handler")
    });
    srv.before('READ', 'department', async (req) => {
        console.log("before handler")
    });
    srv.after('READ', 'department', async (req) => {
        console.log("after handler")
    });

})