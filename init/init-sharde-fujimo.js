// =====================================================
// SHARDE FUJIMO REPLICA SET INITIALIZATION
// =====================================================

print("🚀 SHARDE-FUJIMO SET INIT")

rs.initiate({
  _id: "fujimoRS",
  members: [
    {
      _id: 0,
      host: "mongos-router-dn:27021",
      priority: 2
    },
    {
      _id: 1,
      host: "mongos-router-hn:27021",
      priority: 1
    },
    {
      _id: 2,
      host: "mongos-router-sg:27021",
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

print("✅ SHARDE-FUJIMO INIT DONE")

// =====================================================
// CREATE ROOT ADMIN USER
// =====================================================

// SWITCH TO ADMIN DATABASE
db = db.getSiblingDB("admin")

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
