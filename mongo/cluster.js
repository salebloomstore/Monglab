// =====================================================
// ADD SHARDS TO MONGODB CLUSTER
// =====================================================
sh.addShard("everesRS/sharde-everes-dn:27017,sharde-everes-hn:27017,sharde-everes-sg:27017")
sh.addShard("fansipRS/sharde-fansip-dn:27017,sharde-fansip-hn:27017,sharde-fansip-sg:27017")
sh.addShard("fujimoRS/sharde-fujimo-dn:27017,sharde-fujimo-hn:27017,sharde-fujimo-sg:27017")

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
