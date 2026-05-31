// =====================================================
// SHARDE FANSIP REPLICA SET INITIALIZATION
// =====================================================

rs.initiate({
  _id: "fansipRS",
  members: [
    {
      _id: 0,
      host: "sharde-fansip-dn:27017",
      priority: 2
    },
    {
      _id: 1,
      host: "sharde-fansip-hn:27017",
      priority: 1
    },
    {
      _id: 2,
      host: "sharde-fansip-sg:27017",
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
  user: process.env.MONGO_ADMINIST_SHARDE_FANSIP,
  pwd: process.env.MONGO_PASSWORD_SHARDE_FANSIP,

  roles: [
    {
      role: "root",
      db: "admin"
    }
  ]
})

print("🔐 SHARDE FANSIP ADMIN USER CREATED SUCCESSFULLY")
