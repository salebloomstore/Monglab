// =====================================================
// CONFIG SERVER REPLICA SET INITIALIZATION
// =====================================================

rs.initiate({
  _id: "configRS",

  members: [
    {
      _id: 0,
      host: "mongos-router-dn:27018",
      priority: 2
    },
    {
      _id: 1,
      host: "mongos-router-hn:27018",
      priority: 1
    },
    {
      _id: 2,
      host: "mongos-router-sg:27018",
      priority: 0.5
    }
  ]
})


// =====================================================
// INITIAL STATUS
// =====================================================

print("🚀 CONFIG-SERVER SET INIT DONE")
print("⏳ WAITING PRIMARY...")


while (true) {
  const hello = db.hello()
  if (hello.isWritablePrimary) { break }
  sleep(2000)
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
  user: process.env.MONGO_ADMIN_CONFIG_SERVER,
  pwd: process.env.MONGO_PASSWORD_CONFIG_SERVER,

  roles: [
    {
      role: "root",
      db: "admin"
    }
  ]
})

print("🔐 ADMIN USER CREATED SUCCESSFULLY")
