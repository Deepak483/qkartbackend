# # Setup file template to upload data to MongoDB Atlas
# mongoimport --uri <add-url-connection-string-here> --drop --collection users --file data/export_qkart_users.json
# mongoimport --uri <add-url-connection-string-here> --drop --collection products --file data/export_qkart_products.json

# Setup file template to upload data to0 MongoDB Atlas
mongoimport --uri "mongodb://ac-tgimq23-shard-00-00.g5lik27.mongodb.net:27017,ac-tgimq23-shard-00-01.g5lik27.mongodb.net:27017,ac-tgimq23-shard-00-02.g5lik27.mongodb.net:27017/?replicaSet=atlas-l21a5b-shard-0" --ssl --authenticationDatabase admin --username deepak --password MountMary1999  --drop --collection users --file data/export_qkart_users.json
mongoimport --uri "mongodb://ac-tgimq23-shard-00-00.g5lik27.mongodb.net:27017,ac-tgimq23-shard-00-01.g5lik27.mongodb.net:27017,ac-tgimq23-shard-00-02.g5lik27.mongodb.net:27017/?replicaSet=atlas-l21a5b-shard-0" --ssl --authenticationDatabase admin --username deepak --password MountMary1999  --drop --collection products --file data/export_qkart_products.json --drop --collection users --file data/export_qkart_users.json