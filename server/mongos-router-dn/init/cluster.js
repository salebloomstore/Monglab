// =====================================================
// ADD SHARDS TO MONGODB CLUSTER
// =====================================================
sh.addShard(
  "everesRS/" +
    process.env.SHARDE_EVERES_DN_ADRS +
    ":" +
    process.env.SHARDE_EVERES_DN_PORT_OF +
    "," +
    process.env.SHARDE_EVERES_HN_ADRS +
    ":" +
    process.env.SHARDE_EVERES_HN_PORT_OF +
    "," +
    process.env.SHARDE_EVERES_SG_ADRS +
    ":" +
    process.env.SHARDE_EVERES_SG_PORT_OF +
    "",
);
sh.addShard(
  "fansipRS/" +
    process.env.SHARDE_FANSIP_DN_ADRS +
    ":" +
    process.env.SHARDE_FANSIP_DN_PORT_OF +
    "," +
    process.env.SHARDE_FANSIP_HN_ADRS +
    ":" +
    process.env.SHARDE_FANSIP_HN_PORT_OF +
    "," +
    process.env.SHARDE_FANSIP_SG_ADRS +
    ":" +
    process.env.SHARDE_FANSIP_SG_PORT_OF +
    "",
);
sh.addShard(
  "fujimoRS/" +
    process.env.SHARDE_FUJIMO_DN_ADRS +
    ":" +
    process.env.SHARDE_FUJIMO_DN_PORT_OF +
    "," +
    process.env.SHARDE_FUJIMO_HN_ADRS +
    ":" +
    process.env.SHARDE_FUJIMO_HN_PORT_OF +
    "," +
    process.env.SHARDE_FUJIMO_SG_ADRS +
    ":" +
    process.env.SHARDE_FUJIMO_SG_PORT_OF +
    "",
);

// ENABLE SHARDING FOR DATABASE
db = db.getSiblingDB("pagoda");
sh.enableSharding("pagoda");

// CREATE COLLECTION
db.createCollection("combatants");

// SHARD COLLECTION CONFIGURATION
sh.shardCollection("pagoda.combatants", {
  _id: "hashed",
});

// START INSERTING DATA
print("START INSERT DATA");

// GENERATE SAMPLE DATA
let bulk = [];
bulk.push({
  container: "DATABASE CONNECTED",
});

// INSERT DATA INTO COLLECTION
if (bulk.length > 0) {
  db.combatants.insertMany(bulk);
}

// FINISH
print("DONE");
