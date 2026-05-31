// =====================================================
// SHARDE MATTER REPLICA SET INITIALIZATION
// =====================================================

rs.initiate({
  _id: "matterRS",
  members: [
    {
      _id: 0,
      host: "sharde-matter-dn:27017",
      priority: 2
    },
    {
      _id: 1,
      host: "sharde-matter-hn:27017",
      priority: 1
    },
    {
      _id: 2,
      host: "sharde-matter-sg:27017",
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
