// =====================================================
// SHARDE EVERES REPLICA SET INITIALIZATION
// =====================================================

rs.initiate({
  _id: "everesRS",
  members: [
    {
      _id: 0,
      host:
        process.env.SHARDE_EVERES_DN_ADRS +
        ":" +
        process.env.SHARDE_EVERES_DN_PORT_OF,
      priority: 2,
    },
    {
      _id: 1,
      host:
        process.env.SHARDE_EVERES_HN_ADRS +
        ":" +
        process.env.SHARDE_EVERES_HN_PORT_OF,
      priority: 1,
    },
    {
      _id: 2,
      host:
        process.env.SHARDE_EVERES_SG_ADRS +
        ":" +
        process.env.SHARDE_EVERES_SG_PORT_OF,
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
  user: process.env.MONGO_ADMINIST_SHARDE_EVERES,
  pwd: process.env.MONGO_PASSWORD_SHARDE_EVERES,

  roles: [
    {
      role: "root",
      db: "admin",
    },
  ],
});

print("🔐 SHARDE EVERES ADMIN USER CREATED SUCCESSFULLY");
