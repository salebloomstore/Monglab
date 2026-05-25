// =====================================================
// SHARDE FANSIP REPLICA SET INITIALIZATION
// =====================================================

print("🚀 SHARDE-FANSIP SET INIT")

rs.initiate({
  _id: "fansipRS",
  members: [
    {
      _id: 0,
      host: "mongos-router-dn:27020",
      priority: 2
    },
    {
      _id: 1,
      host: "mongos-router-hn:27020",
      priority: 1
    },
    {
      _id: 2,
      host: "mongos-router-sg:27020",
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

print("✅ SHARDE-FANSIP INIT DONE")

// =====================================================
// CREATE ROOT ADMIN USER
// =====================================================

// SWITCH TO ADMIN DATABASE
db = db.getSiblingDB("admin")

db.createUser({
  user: process.env.MONGO_ADMIN_SHARDE_FANSIP,
  pwd: process.env.MONGO_PASSWORD_SHARDE_FANSIP,

  roles: [
    {
      role: "root",
      db: "admin"
    }
  ]
})

print("🔐 ADMIN USER CREATED SUCCESSFULLY")
