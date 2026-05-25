// =====================================================
// SHARDE EVERES REPLICA SET INITIALIZATION
// =====================================================

rs.initiate({
  _id: "everesRS",

  members: [
    {
      _id: 0,
      host: "mongos-router-dn:27019",
      priority: 100
    },
    {
      _id: 1,
      host: "mongos-router-hn:27019",
      priority: 10
    },
    {
      _id: 2,
      host: "mongos-router-sg:27019",
      priority: 10
    }
  ]
})


// =====================================================
// INITIAL STATUS
// =====================================================

print("🚀 SHARDE-EVERES SET INIT DONE")
print("⏳ WAITING PRIMARY...")


while (true) {
  const hello = db.hello()
  if (hello.isWritablePrimary) { break }
  sleep(2000)
}

print("✅ SHARDE-EVERES INIT DONE")


// =====================================================
// SWITCH TO ADMIN DATABASE
// =====================================================

db = db.getSiblingDB("admin")


// =====================================================
// CREATE ROOT ADMIN USER
// =====================================================

db.createUser({
  user: process.env.MONGO_ADMIN_SHARDE_EVERES,
  pwd: process.env.MONGO_PASSWORD_SHARDE_EVERES,

  roles: [
    {
      role: "root",
      db: "admin"
    }
  ]
})

print("🔐 ADMIN USER CREATED SUCCESSFULLY")
