// =====================================================
// SHARDE FANSIP REPLICA SET INITIALIZATION
// =====================================================

rs.initiate({
  _id: "fansipRS",

  members: [
    {
      _id: 0,
      host: "mongos-router-dn:27020",
      priority: 100
    },
    {
      _id: 1,
      host: "mongos-router-hn:27020",
      priority: 10
    },
    {
      _id: 2,
      host: "mongos-router-sg:27020",
      priority: 1
    }
  ]
})


// =====================================================
// INITIAL STATUS
// =====================================================

print("🚀 SHARDE-FANSIP SET INIT DONE")
print("⏳ WAITING PRIMARY...")


while (true) {
  const hello = db.hello()
  if (hello.isWritablePrimary) { break }
  sleep(2000)
}

print("✅ SHARDE-FANSIP INIT DONE")


// =====================================================
// SWITCH TO ADMIN DATABASE
// =====================================================

db = db.getSiblingDB("admin")


// =====================================================
// CREATE ROOT ADMIN USER
// =====================================================

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

db.getSiblingDB("admin").init_status.insertOne({
  replicaSet: "fanshipRS",
  done: true,
  createdAt: new Date()
})

sleep(2000)
