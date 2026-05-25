// =====================================================
// SHARDE FUJIMO REPLICA SET INITIALIZATION
// =====================================================

rs.initiate({
  _id: "fujimoRS",

  members: [
    {
      _id: 0,
      host: "mongos-router-dn:27021"
    },
    {
      _id: 1,
      host: "mongos-router-hn:27021"
    },
    {
      _id: 2,
      host: "mongos-router-sg:27021"
    }
  ]
})


// =====================================================
// INITIAL STATUS
// =====================================================

print("🚀 SHARDE-FUJIMO SET INIT DONE")
print("⏳ WAITING PRIMARY...")


while (!db.hello().isWritablePrimary) {
  sleep(2)
}

print("✅ SHARDE-FUJIMO INIT DONE")


// =====================================================
// SWITCH TO ADMIN DATABASE
// =====================================================

db = db.getSiblingDB("admin")


// =====================================================
// CREATE ROOT ADMIN USER
// =====================================================

db.createUser({
  user: process.env.MONGO_ADMIN_SHARDE_FUJIMO,
  pwd: process.env.MONGO_PASSWORD_SHARDE_FUJIMO,

  roles: [
    {
      role: "root",
      db: "admin"
    }
  ]
})

print("🔐 ADMIN USER CREATED SUCCESSFULLY")
