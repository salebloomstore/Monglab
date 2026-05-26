// =====================================================
// ADD SHARDS TO MONGODB CLUSTER
// =====================================================
sh.addShard("everesRS/mongos-router-dn:27019,mongos-router-hn:27019,mongos-router-sg:27019")
sh.addShard("fansipRS/mongos-router-dn:27020,mongos-router-hn:27020,mongos-router-sg:27020")
sh.addShard("fujimoRS/mongos-router-dn:27021,mongos-router-hn:27021,mongos-router-sg:27021")

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
