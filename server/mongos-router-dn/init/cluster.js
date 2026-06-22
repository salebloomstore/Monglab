// =====================================================
// ADD SHARDS TO MONGODB CLUSTER
// =====================================================
sh.addShard("everesRS/" + process.env.SHARDE_EVERES_DN_ADRS + ":" + process.env.SHARDE_EVERES_DN_PORT_OF + "," + process.env.SHARDE_EVERES_HN_ADRS + ":" + process.env.SHARDE_EVERES_HN_PORT_OF + "," + process.env.SHARDE_EVERES_SG_ADRS + ":" + process.env.SHARDE_EVERES_SG_PORT_OF + "")
sh.addShard("fansipRS/" + process.env.SHARDE_FANSIP_DN_ADRS + ":" + process.env.SHARDE_FANSIP_DN_PORT_OF + "," + process.env.SHARDE_FANSIP_HN_ADRS + ":" + process.env.SHARDE_FANSIP_HN_PORT_OF + "," + process.env.SHARDE_FANSIP_SG_ADRS + ":" + process.env.SHARDE_FANSIP_SG_PORT_OF + "")
sh.addShard("fujimoRS/" + process.env.SHARDE_FUJIMO_DN_ADRS + ":" + process.env.SHARDE_FUJIMO_DN_PORT_OF + "," + process.env.SHARDE_FUJIMO_HN_ADRS + ":" + process.env.SHARDE_FUJIMO_HN_PORT_OF + "," + process.env.SHARDE_FUJIMO_SG_ADRS + ":" + process.env.SHARDE_FUJIMO_SG_PORT_OF + "")

// ENABLE SHARDING FOR DATABASE
db = db.getSiblingDB("test")
sh.enableSharding("test")

// CREATE COLLECTION
db.createCollection("examples")

// SHARD COLLECTION CONFIGURATION
sh.shardCollection(
  "test.examples",
  {
    _id: "hashed"
  }
)

// START INSERTING DATA
print("START INSERT DATA")

// GENERATE SAMPLE DATA
let bulk = []
for (let i = 0; i < 10; i++) {

  bulk.push({
    username: "user_" + i,
    email: "user_" + i + "@gmail.com",
    score: Math.floor(Math.random() * 1000),
    createdAt: new Date()
  })

}

// INSERT DATA INTO COLLECTION
if (bulk.length > 0) {
  db.examples.insertMany(bulk)
}

// FINISH
print("DONE")
