// =====================================================
// CONFIG SERVER REPLICA SET INITIALIZATION
// =====================================================

print("🚀 CONFIG-SERVER SET INIT")

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
      priority: 1
    }
  ]
})

print("⏳ WAITING PRIMARY...")

while (true) {
  const hello = db.hello()
  if (hello.isWritablePrimary) { break }
  sleep(2000)
}

print("✅ CONFIG-SERVER INIT DONE")

// =====================================================
// CREATE ROOT ADMIN USER
// =====================================================

// SWITCH TO ADMIN DATABASE
db = db.getSiblingDB("admin")

db.createUser({
  user: process.env.MONGO_ADMINIST_SHARDE_MATTER,
  pwd: process.env.MONGO_PASSWORD_SHARDE_MATTER,

  roles: [
    {
      role: "root",
      db: "admin"
    }
  ]
})

print("🔐 ADMIN USER CREATED SUCCESSFULLY")
