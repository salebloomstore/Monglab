// =====================================================
// SHARDE MATTER REPLICA SET INITIALIZATION
// =====================================================

rs.initiate({
  _id: "matterRS",
  members: [
    {
      _id: 0,
      host: process.env.SHARDE_MATTER_DN_ADRS + ":" + process.env.PORT_OF_MONGOS,
      priority: 2
    },
    {
      _id: 1,
      host: process.env.SHARDE_MATTER_HN_ADRS + ":" + process.env.PORT_OF_MONGOS,
      priority: 1
    },
    {
      _id: 2,
      host: process.env.SHARDE_MATTER_SG_ADRS + ":" + process.env.PORT_OF_MONGOS,
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
