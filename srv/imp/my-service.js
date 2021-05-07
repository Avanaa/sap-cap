module.exports = (srv) => {
    srv.after('READ', 'Posts', (oDataReq) => {
        console.log('AEEE');
    })
}