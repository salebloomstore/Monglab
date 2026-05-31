// =====================================================
// SHARDE MATTER REPLICA SET INITIALIZATION
// =====================================================

rs.initiate({
  _id: "matterRS",
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

print("🔐 SHARDE MATTER ADMIN USER CREATED SUCCESSFULLY")
