// =====================================================
// SHARDE FUJIMO REPLICA SET INITIALIZATION
// =====================================================

rs.initiate({
  _id: "fujimoRS",
  members: [
    {
      _id: 0,
      host:
        process.env.SHARDE_FUJIMO_DN_ADRS +
        ":" +
        process.env.SHARDE_FUJIMO_DN_PORT_OF,
      priority: 2,
    },
    {
      _id: 1,
      host:
        process.env.SHARDE_FUJIMO_HN_ADRS +
        ":" +
        process.env.SHARDE_FUJIMO_HN_PORT_OF,
      priority: 1,
    },
    {
      _id: 2,
      host:
        process.env.SHARDE_FUJIMO_SG_ADRS +
        ":" +
        process.env.SHARDE_FUJIMO_SG_PORT_OF,
      priority: 1,
    },
  ],
});

print("⏳ WAITING PRIMARY...");

while (true) {
  const hello = db.hello();
  if (hello.isWritablePrimary) {
    break;
  }
  sleep(2000);
}

// =====================================================
// CREATE ROOT ADMIN USER
// =====================================================

// SWITCH TO ADMIN DATABASE
db = db.getSiblingDB("admin");

db.createUser({
  user: process.env.MONGO_ADMINIST_SHARDE_FUJIMO,
  pwd: process.env.MONGO_PASSWORD_SHARDE_FUJIMO,

  roles: [
    {
      role: "root",
      db: "admin",
    },
  ],
});

print("🔐 SHARDE FUJIMO ADMIN USER CREATED SUCCESSFULLY");
